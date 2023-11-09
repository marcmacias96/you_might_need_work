part of 'profile_form_cubit.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required List<Bank> banks,
    required List<Industry> industries,
    required bool isSubmitting,
    required bool isLoading,
    CoreFailure? failure,
    ProfileUiForm? profileForm,
    Profile? profile,
    Either<CoreFailure, Unit>? failureOrUpdateProfile,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => const ProfileFormState(
        isSubmitting: false,
        isLoading: false,
        banks: [],
        industries: [],
      );
}
