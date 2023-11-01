import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:you_might_need_work/data/core/core.dart';


/// A module for injecting Firebase and HTTP client dependencies.
///
/// This module provides access to Firebase and HTTP client dependencies,
/// such as
/// [GoogleSignIn], [FirebaseAuth], and [Dio],
/// which is a popular HTTP client for
/// making network requests.
/// It also configures the HTTP client with base options
/// and request/response logging.
///
/// Example:
///
/// ```dart
/// final googleSignIn = getIt<GoogleSignIn>();
/// final firebaseAuth = getIt<FirebaseAuth>();
/// final httpClient =  getIt<Dio>();
/// ```
///
/// In the example above, you can access Firebase and HTTP 
/// client dependencies using
/// instances of [FirebaseInjectableModule]. 
/// This module is configured to provide
/// singleton instances of [GoogleSignIn], [FirebaseAuth], and a pre-configured
/// [Dio] HTTP client for making network requests.
@module
abstract class FirebaseInjectableModule {
  /// Provides a [GoogleSignIn] instance as a lazy singleton.
  ///
  /// The [GoogleSignIn] instance is used for
  ///  handling Google Sign-In operations.
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

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
      'X-Auth-Token': dotenv.env['API_KEY']!,
    };
    dio.options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(milliseconds: 60000),
      receiveTimeout: const Duration(milliseconds: 60000),
      headers: headers,
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
    return dio;
  }
}
