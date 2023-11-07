import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/auth/auth.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

/// A Cubit for handling authentication-related state management.
///
/// This Cubit is responsible for managing the state related to authentication
/// operations, including user sign-in and sign-out. It listens to changes in
/// the authentication status and updates the state accordingly.
///
/// Example:
///
/// ```dart
/// final authCubit = getIt<AuthCubit>();
///
/// // Check the authentication status.
/// authCubit.authCheck();
///
/// // Sign out the current user.
/// authCubit.signOut();
/// ```
///
/// In the example above, you can create an instance of [AuthCubit] to manage
/// authentication-related state. The Cubit listens to changes in authentication
/// status and provides methods for checking authentication and signing out the
/// current user.
@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepository) : super(const AuthState.initial());

  final IAuthRepository _authRepository;

  /// Check the authentication status and update the state.
  ///
  /// This method checks the authentication status by listening to changes in
  /// the [_authRepository]. It updates the state based on the authentication
  /// result: unauthenticated if there's a failure, or authenticated if there's
  /// a valid user.
  Future<void> authCheck() async {
    final failureOrProfile = await _authRepository.authCheck();
    return failureOrProfile.fold(
      (CoreFailure failure) => emit(
        const AuthState.unauthenticated(),
      ),
      (Profile profile) {
        return emit(
          AuthState.authenticated(profile),
        );
      },
    );
  }

  /// Sign out the current user.
  ///
  /// This method signs out the currently authenticated user by calling the
  /// corresponding method in the [_authRepository].
  Future<void> signOut() async {
    await _authRepository.signOut();
  }
}
