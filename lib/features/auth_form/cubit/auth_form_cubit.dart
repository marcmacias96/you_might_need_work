import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/auth/auth.dart';
import 'package:you_might_need_work/data/auth/models/models.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/features/auth_form/models/models.dart';

part 'auth_form_state.dart';
part 'auth_form_cubit.freezed.dart';

/// A Cubit for handling user authentication and registration forms.
///
/// This Cubit is responsible for managing the state related to 
/// user authentication
/// and registration forms. It provides methods for registering 
/// and signing in users
/// with email and password credentials.
///
/// Example:
///
/// ```dart
/// final authFormCubit = getIt<AuthFormCubit>();
///
/// // Register a user with email and password credentials.
/// authFormCubit.registerWithEmailAndPasswordPressed(credentials);
///
/// // Sign in a user with email and password credentials.
/// authFormCubit.signInWithEmailAndPasswordPressed(credentials);
/// ```
///
/// In the example above, you can use `getIt<AuthFormCubit>()` to obtain an instance
/// of [AuthFormCubit], which is responsible for managing user authentication and
/// registration forms. The Cubit provides methods for registering and signing in
/// users using email and password credentials.
@injectable
class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit(this._authRepository) : super(AuthFormState.initial());

  final IAuthRepository _authRepository;

  /// Register a user with email and password credentials.
  ///
  /// This method initiates the user registration process with the provided
  /// [credentials]. It calls the corresponding method in the [_authRepository].
  void registerWithEmailAndPasswordPressed(Credentials credentials) {
    _performActionOnAuthRepositoryWithEmailAndPassword(
      _authRepository.registerWithEmailAndPassword,
      credentials: credentials,
    );
  }

  /// Sign in a user with email and password credentials.
  ///
  /// This method initiates the user sign-in process with the provided
  /// [credentials]. It calls the corresponding method in the [_authRepository].
  void signInWithEmailAndPasswordPressed(Credentials credentials) {
    _performActionOnAuthRepositoryWithEmailAndPassword(
      _authRepository.signInWithEmailPassword,
      credentials: credentials,
    );
  }

  /// Perform an action on the authentication repository with email and password credentials.
  ///
  /// This method performs a common action on the authentication repository with the
  /// provided [forwardedCall] function and [credentials]. It manages the state during
  /// the process and updates the result in the [AuthFormState].
  Future<void> _performActionOnAuthRepositoryWithEmailAndPassword(
    Future<Either<CoreFailure, AuthToken>> Function({
      required String emailAddress,
      required String password,
    }) forwardedCall, {
    required Credentials credentials,
  }) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: null,
      ),
    );

    final failureOrSuccess = await forwardedCall(
      emailAddress: credentials.email,
      password: credentials.password,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: failureOrSuccess,
      ),
    );
  }
}
