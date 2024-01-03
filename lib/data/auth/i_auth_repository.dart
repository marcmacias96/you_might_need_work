import 'package:dartz/dartz.dart';
import 'package:you_might_need_work/data/auth/models/models.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';
import 'package:you_might_need_work/features/auth_form/models/models.dart';

/// An abstract repository interface for authentication-related operations.
///
/// This interface defines the methods required for handling authentication
/// operations, such as signing in with an email and password, registering with
/// an email and password, and retrieving the authenticated user.
///
/// Example:
///
/// ```dart
/// final authRepository = getIt<IAuthRepository>();
/// final result = await authRepository.signInWithEmailPassword(Credentials(
///   email: 'user@example.com',
///   password: 'password123',
/// });
///
/// if (result.isRight()) {
///   // Authentication was successful.
/// } else {
///   // Authentication failed. Handle the error.
/// }
/// ```
///
/// In the example above, an instance of a class implementing
/// the [IAuthRepository]
/// interface is used to perform authentication operations. You can use this
/// interface as a contract to define authentication-related methods within your
/// application.
abstract class IAuthRepository {
  /// Sign in with an email and password.
  ///
  /// This method attempts to authenticate a user with
  /// with the provided Credentials model
  /// it returns [Right(Unit)].
  /// Otherwise, it returns [Left(AuthFailure)] with details of the failure.
  Future<Either<CoreFailure, AuthToken>> signInWithEmailPassword({
    required Credentials credentials,
  });

  /// Register a new user with an email and password.
  ///
  /// This method attempts to register a new user
  /// with the provided Credentials model. If the registration is successful,
  /// it returns [Right(Unit)].
  /// Otherwise, it returns [Left(AuthFailure)] with details of the failure.
  Future<Either<CoreFailure, AuthToken>> registerWithEmailAndPassword({
    required Credentials credentials,
  });

  /// Sign out.
  ///
  /// This method attempts to sign out the currently authenticated user.
  /// If the sign out is successful, it returns [Right(Unit)].
  /// Otherwise, it returns [Left(AuthFailure)] with details of the failure.
  Future<Either<CoreFailure, Unit>> signOut();

  /// Check the authentication status.
  ///
  /// This method returns a stream of [Either<AuthFailure, Profile>].
  /// If the user is authenticated, it returns [Right(Profile)].
  /// Otherwise, it returns [Left(AuthFailure)] with details of the failure.
  Future<Either<CoreFailure, Profile>> authCheck();

  Future<Either<CoreFailure, Unit>> refreshToken(String refreshToken);
}
