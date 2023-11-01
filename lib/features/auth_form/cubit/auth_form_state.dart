part of 'auth_form_cubit.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required bool isSubmitting,
    required Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _AuthFormState;

  factory AuthFormState.initial() => const AuthFormState(
        isSubmitting: false,
        authFailureOrSuccess: null,
      );
}
