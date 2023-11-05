import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/data/profile/helpers/helpers.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {

  factory Profile({
    required String firstName,
    required String lastName,
    @DocumentTypeConverter() required DocumentType documentType,
    required String documentNumber,
    required String rawPassword,
    required String phone,
    required String playerId,
    @UserTypeConverter() required UserType userType,
    required String displayName,
    required String occupationTitle,
    required String address,
    @JsonKey(includeIfNull: false) bool? isActive,
    @JsonKey(includeIfNull: false) bool? isPhoneValidated,
    @JsonKey(includeIfNull: false) String? feedback,
    @JsonKey(includeIfNull: false) int? defaultCapacity,
    @AvailableDaysConverter()
    @JsonKey(includeIfNull: false)
    List<AvailableDays>? availableDays,
    @RegistrationProviderConverter()
    @JsonKey(includeIfNull: false)
    RegistrationProvider? registrationProvider,
    @JsonKey(includeIfNull: false) List<int>? industries,
    @EducationLevelConverter()
    @JsonKey(includeIfNull: false)
    EducationLevel? educationLevel,
    @JsonKey(includeIfNull: false) int? latitude,
    @JsonKey(includeIfNull: false) int? longitude,
    @JsonKey(includeIfNull: false) DateTime? documentIssueDate,
    @JsonKey(includeIfNull: false) bool? isDocumentValidated,
    @JsonKey(includeIfNull: false) bool? isBasicInfoSetupCompleted,
    @JsonKey(includeIfNull: false) bool? isWorkScheduleSetupCompleted,
    @JsonKey(includeIfNull: false) bool? isAddressSetupCompleted,
    @JsonKey(includeIfNull: false) bool? isBankAccountSetupCompleted,
  }) = _Profile;
  const Profile._();

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
