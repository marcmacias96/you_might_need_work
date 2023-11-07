import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/data/profile/helpers/helpers.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'document_type')
    @DocumentTypeConverter()
    required DocumentType? documentType,
    @JsonKey(name: 'document_number') required String? documentNumber,
    @JsonKey(name: 'raw_password') required String? rawPassword,
    required String? phone,
    @JsonKey(name: 'player_id') required String? playerId,
    @JsonKey(name: 'user_type')
    @UserTypeConverter()
    required UserType? userType,
    @JsonKey(name: 'display_name') required String? displayName,
    @JsonKey(name: 'occupation_title') required String? occupationTitle,
    required String? address,
    @JsonKey(name: 'on_boarding') required Onboarding onboarding,
    @JsonKey(name: 'is_phone_validated')
    @JsonKey(includeIfNull: false)
    required bool isPhoneValidated,
    @JsonKey(name: 'is_active') @JsonKey(includeIfNull: false) bool? isActive,
    @JsonKey(includeIfNull: false) String? feedback,
    @JsonKey(name: 'default_capacity')
    @JsonKey(includeIfNull: false)
    int? defaultCapacity,
    @AvailableDaysConverter()
    @JsonKey(includeIfNull: false, name: 'available_days')
    List<AvailableDays>? availableDays,
    @RegistrationProviderConverter()
    @JsonKey(includeIfNull: false, name: 'registration_provider')
    RegistrationProvider? registrationProvider,
    @JsonKey(includeIfNull: false) List<int>? industries,
    @EducationLevelConverter()
    @JsonKey(includeIfNull: false, name: 'education_level')
    EducationLevel? educationLevel,
    @JsonKey(includeIfNull: false) int? latitude,
    @JsonKey(includeIfNull: false) int? longitude,
    @JsonKey(
      includeIfNull: false,
      name: 'document_issue_date',
    )
    DateTime? documentIssueDate,
    @JsonKey(includeIfNull: false, name: 'is_document_validated')
    bool? isDocumentValidated,
    @JsonKey(includeIfNull: false, name: 'is_basic_info_setup_completed')
    bool? isBasicInfoSetupCompleted,
    @JsonKey(includeIfNull: false, name: 'is_work_schedule_setup_completed')
    bool? isWorkScheduleSetupCompleted,
    @JsonKey(includeIfNull: false, name: 'is_address_setup_completed')
    bool? isAddressSetupCompleted,
    @JsonKey(includeIfNull: false, name: 'is_bank_account_setup_completed')
    bool? isBankAccountSetupCompleted,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
