import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_might_need_work/data/core/api_client/api_client.dart';
import 'package:you_might_need_work/data/core/core.dart';
import 'package:you_might_need_work/data/local/i_local_repository.dart';
import 'package:you_might_need_work/features/auth/cubit/cubit.dart';
import 'package:you_might_need_work/injection.dart';

/// A module for injecting HTTP client dependencies and SharedPreferences.
///
/// This module provides access to HTTP client dependencies,
/// such as [Dio],
/// which is a popular HTTP client for
/// making network requests.
/// It also configures the HTTP client with base options
/// and request/response logging.
///
/// Example:
///
/// ```dart
/// final httpClient =  getIt<Dio>();
/// ```
///
/// In the example above, you can access  HTTP
/// client dependencies using
/// instances of [InjectableModule].
/// This module is configured to provide
/// singleton instances of [Dio], and a pre-configured
/// [Dio] HTTP client for making network requests.
@module
abstract class InjectableModule {
  /// Provides a [Dio] HTTP client as a lazy singleton.
  ///
  /// The [Dio] HTTP client is configured with base options,
  /// including the base URL,
  /// request/response timeouts, and custom headers
  /// for network requests. It also
  /// includes an interceptor for logging request/response details.
  @lazySingleton
  Dio get httpClient {
    final dio = Dio();
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'x-api-key': dotenv.env['API_KEY']!,
    };
    dio.options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(milliseconds: 20000),
      receiveTimeout: const Duration(milliseconds: 20000),
      headers: headers,
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (options.path == Endpoints.signIn ||
              options.path == Endpoints.signUp) {
            return handler.next(options);
          }
          final authToken = getIt<ILocalRepository>().getAuthData();
          if (authToken == null || JwtDecoder.isExpired(authToken.access)) {
            options.headers.remove(HttpHeaders.authorizationHeader);
            return handler.next(options);
          }
          options.headers.addAll({
            HttpHeaders.authorizationHeader: 'Bearer ${authToken.access}',
          });
          return handler.next(options);
        },
        onError: (e, handler) async {
          final authToken = getIt<ILocalRepository>().getAuthData();
          if (authToken == null) {
            return handler.next(e);
          }
          if (e.response?.statusCode == 401) {
            if (JwtDecoder.isExpired(authToken.refresh)) {
              await getIt<AuthCubit>().signOut();
            } else {
              await getIt<AuthCubit>()
                  .refreshToken(refreshToken: authToken.refresh);
              return handler.resolve(await dio.fetch(e.requestOptions));
            }
          }
          return handler.next(e);
        },
      ),
    );
    return dio;
  }

  /// Provides a [SharedPreferences] instance as a pre-resolved object.
  ///
  /// The [SharedPreferences] object is used for storing and retrieving
  /// key-value pairs persistently across app launches.
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  ApiClient get client =>
      ApiClient(getIt<Dio>());
}
