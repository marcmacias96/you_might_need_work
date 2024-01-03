import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:you_might_need_work/utils/utils.dart';

part 'profile.gform.dart';
part 'profile.g.dart';
part 'profile.freezed.dart';

@Rf()
@freezed
class Profile with _$Profile {
  factory Profile({
    CompanyData? companyData,
    CompanyDetail? companyDetail,
    Address? address,
    IdentityData? identityData,
    ProfileData? profileData,
    WorkDayData? workDayData,
    PaymentMethod? paymentMethod,
    PhoneNumberData? phoneNumber,
  }) = _Profile;

  factory Profile.empty() => Profile();

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@RfGroup<CompanyData>()
@freezed
class CompanyData with _$CompanyData {
  factory CompanyData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String company,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String feedback,
  }) = _CompanyData;

  factory CompanyData.fromJson(Map<String, dynamic> json) =>
      _$CompanyDataFromJson(json);
}

@RfGroup<CompanyDetail>()
@freezed
class CompanyDetail with _$CompanyDetail {
  factory CompanyDetail({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String industry,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String description,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String title,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String occupation,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String specialization,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required DateTime statingAt,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required DateTime endingAt,
    @RfControl(
      validators: [
        RequiredValidator(),
        NumberValidator(),
      ],
    )
    required String paymentForHour,
    @RfControl(
      validators: [
        RequiredValidator(),
        NumberValidator(),
      ],
    )
    required String hoursRequired,
  }) = _CompanyDetail;

  factory CompanyDetail.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailFromJson(json);
}

@RfGroup<Address>()
@freezed
class Address with _$Address {
  factory Address({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String address,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@RfGroup<IdentityData>()
@freezed
class IdentityData with _$IdentityData {
  factory IdentityData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String name,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String lastName,
    @RfControl(
      validators: [
        RequiredValidator(),
        NumberValidator(),
      ],
    )
    required String documentNumber,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String documentType,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required DateTime documentIssueDate,
  }) = _IdentityData;

  factory IdentityData.fromJson(Map<String, dynamic> json) =>
      _$IdentityDataFromJson(json);
}

@RfGroup<ProfileData>()
@freezed
class ProfileData with _$ProfileData {
  factory ProfileData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String levelOfStudy,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String occupation,
  }) = _ProfileData;
  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@RfGroup<WorkDayData>()
@freezed
class WorkDayData with _$WorkDayData {
  factory WorkDayData({
    @RfControl(
      validators: [
        RequiredValidator(),
        RangeValidator(),
      ],
    )
    required String capacity,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required List<String> availableDays,
  }) = _WorkDayData;

  factory WorkDayData.fromJson(Map<String, dynamic> json) =>
      _$WorkDayDataFromJson(json);
}

@RfGroup<PaymentMethod>()
@freezed
class PaymentMethod with _$PaymentMethod {
  factory PaymentMethod({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String bank,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String accountNumber,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String accountType,
  }) = _PaymentMethod;

  factory PaymentMethod.empty() => PaymentMethod(
        bank: '',
        accountNumber: '',
        accountType: '',
      );

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}

@RfGroup<PhoneNumberData>()
@freezed
class PhoneNumberData with _$PhoneNumberData {
  factory PhoneNumberData({
    @RfControl(
      validators: [
        RequiredPhoneValidator(),
        ValidPhoneValidator(),
      ],
    )
    required PhoneNumber phoneNumber,
  }) = _PhoneNumberData;

  factory PhoneNumberData.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberDataFromJson(json);
}
