import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_might_need_work/data/core/core.dart';
import 'package:you_might_need_work/data/local/i_local_repository.dart';
import 'package:you_might_need_work/injection.dart';

/// A module for injecting HTTP client dependencies and SharedPreferences.
///
/// This module provides access to Firebase and HTTP client dependencies,
/// such as
/// [FirebaseAuth], and [Dio],
/// which is a popular HTTP client for
/// making network requests.
/// It also configures the HTTP client with base options
/// and request/response logging.
///
/// Example:
///
/// ```dart
/// final firebaseAuth = getIt<FirebaseAuth>();
/// final httpClient =  getIt<Dio>();
/// ```
///
/// In the example above, you can access Firebase and HTTP
/// client dependencies using
/// instances of [InjectableModule].
/// This module is configured to provide
/// singleton instances of [Dio], [FirebaseAuth], and a pre-configured
/// [Dio] HTTP client for making network requests.
@module
abstract class InjectableModule {
  /// Provides a [FirebaseAuth] instance as a lazy singleton.
  ///
  /// The [FirebaseAuth] instance is used for handling authentication and
  /// authorization within a Firebase project.
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

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
          final authToken = getIt<ILocalRepository>().getAuthData();
          if (authToken == null) {
            handler.reject(
              DioException.badResponse(
                statusCode: 401,
                requestOptions: options,
                response: Response(requestOptions: options),
              ),
            );
          }
          options.headers.addAll({
            HttpHeaders.authorizationHeader: 'Bearer ${authToken?.access}',
          });
          handler.next(options);
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
}
