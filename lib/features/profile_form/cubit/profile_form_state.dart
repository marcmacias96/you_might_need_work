part of 'profile_form_cubit.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required bool isSubmitting,
    ProfileUiForm? profileForm,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => const ProfileFormState(
        isSubmitting: false,
      );
}
