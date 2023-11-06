import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:you_might_need_work/utils/utils.dart';


part 'profile.gform.dart';

@Rf()
class Profile {
  Profile({
    this.companyData,
    this.companyDetail,
    this.address,
    this.identityData,
    this.profileData,
    this.workDayData,
    this.paymentMethod,
    this.phoneNumber,
  });

  factory Profile.empty() => Profile();

  final CompanyData? companyData;
  final CompanyDetail? companyDetail;
  final Address? address;
  final IdentityData? identityData;
  final ProfileData? profileData;
  final WorkDayData? workDayData;
  final PaymentMethod? paymentMethod;
  final PhoneNumberData? phoneNumber;
}

@RfGroup<CompanyData>()
class CompanyData {
  CompanyData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.company,
  });

  final String company;
}

@RfGroup<CompanyDetail>()
class CompanyDetail {
  CompanyDetail({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.industry,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.description,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.title,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.occupation,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.specialization,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.statingAt,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.endingAt,
    @RfControl(
      validators: [
        RequiredValidator(),
        NumberValidator(),
      ],
    )
    required this.paymentForHour,
    @RfControl(
      validators: [
        RequiredValidator(),
        NumberValidator(),
      ],
    )
    required this.hoursRequired,
  });

  final String industry;
  final String title;
  final String description;
  final String occupation;
  final String specialization;
  final DateTime statingAt;
  final DateTime endingAt;
  final String paymentForHour;
  final String hoursRequired;
}

@RfGroup<Address>()
class Address {
  Address({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.address,
  });

  final String address;
}

@RfGroup<IdentityData>()
class IdentityData {
  IdentityData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.name,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.lastName,
    @RfControl(
      validators: [
        RequiredValidator(),
        NumberValidator(),
      ],
    )
    required this.documentNumber,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.documentType,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.documentIssueDate,
  });

  final String name;
  final String lastName;
  final String documentNumber;
  final String documentType;
  final DateTime documentIssueDate;
}

@RfGroup<ProfileData>()
class ProfileData {
  ProfileData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.levelOfStudy,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.occupation,
  });

  final String levelOfStudy;
  final String occupation;
}

@RfGroup<WorkDayData>()
class WorkDayData {
  WorkDayData({
    @RfControl(
      validators: [
        RequiredValidator(),
        RangeValidator(),
      ],
    )
    required this.capacity,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.availableDays,
  });

  final String capacity;
  final List<String> availableDays;
}

@RfGroup<PaymentMethod>()
class PaymentMethod {
  PaymentMethod({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.bank,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.accountNumber,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.accountType,
  });

  factory PaymentMethod.empty() => PaymentMethod(
        bank: '',
        accountNumber: '',
        accountType: '',
      );

  final String bank;
  final String accountNumber;
  final String accountType;
}

@RfGroup<PhoneNumberData>()
class PhoneNumberData {
  PhoneNumberData({
    @RfControl(
      validators: [
        RequiredPhoneValidator(),
        ValidPhoneValidator(),
      ],
    )
    required this.phoneNumber,
  });

  final PhoneNumber phoneNumber;
}
