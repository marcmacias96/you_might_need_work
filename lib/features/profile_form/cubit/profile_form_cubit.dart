import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/data/config/config.dart';
import 'package:you_might_need_work/data/config/models/models.dart';
import 'package:you_might_need_work/data/core/models/models.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';
import 'package:you_might_need_work/data/profile/profile.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';

part 'profile_form_state.dart';
part 'profile_form_cubit.freezed.dart';

/// A Cubit for managing user profile form data.
///
/// This Cubit is responsible for managing the state related to user
/// profile form data.
/// It allows you to update and maintain the user's profile information.
///
/// Example:
///
/// ```dart
/// final profileFormCubit = getIt<ProfileFormCubit>();
///
/// // Update the user's profile information with a [ProfileForm] instance.
/// profileFormCubit.updateModel(profileForm);
/// ```
///
/// In the example above, you can use `getIt<ProfileFormCubit>()`
/// to obtain an instance
/// of [ProfileFormCubit], which is responsible for managing user
/// profile form data.
/// The Cubit provides a method for updating the user's
/// profile information using a
/// [ProfileUiForm] instance.
@injectable
class ProfileFormCubit extends Cubit<ProfileFormState> {
  ProfileFormCubit(this._profileRepository, this._configRepository)
      : super(ProfileFormState.initial());

  final IProfileRepository _profileRepository;

  final IConfigRepository _configRepository;

  Future<void> init({required Profile profile}) async {
    emit(
      state.copyWith(
        profile: profile,
        isLoading: true,
      ),
    );
    final failureOrBanks = await _configRepository.getBanks();
    final failureOrIndustries = await _configRepository.getIndustries();
    failureOrBanks.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (banks) => emit(state.copyWith(banks: banks)),
    );
    failureOrIndustries.fold(
      (failure) => emit(state.copyWith(failure: failure)),
      (industries) => emit(state.copyWith(industries: industries)),
    );
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }

  void resetServerResponse() {
    emit(
      state.copyWith(
        failure: null,
        failureOrUpdateProfile: null,
      ),
    );
  }

  Future<void> updatePhoneNumber(PhoneNumberData phoneNumberData) async {
    emit(
      state.copyWith(
        profile: state.profile!.copyWith(
          phone: '${phoneNumberData.phoneNumber.countryCode}'
              '${phoneNumberData.phoneNumber.nsn}',
        ),
      ),
    );
  }

  /// Update the user's profile information with a [ProfileUiForm] instance.
  ///
  /// This method updates the user's profile information in the state
  /// by replacing
  /// the current [ProfileUiForm] with the provided [profileForm]
  /// to share it in the different forms of the page view
  void updateModel(ProfileUiForm profileForm) {
    emit(state.copyWith(profileForm: profileForm));
  }

  Future<void> saveWorkerIdentityData(IdentityData identityData) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        profile: state.profile!.copyWith(
          firstName: '',
          lastName: '',
          documentIssueDate: DateTime.now(),
          documentNumber: '',
          documentType: DocumentType.driverLicense,
        ),
      ),
    );
    final failureOrUpdateProfile =
        await _profileRepository.updateProfile(state.profile!);
    emit(state.copyWith(failureOrUpdateProfile: failureOrUpdateProfile));
  }
}
