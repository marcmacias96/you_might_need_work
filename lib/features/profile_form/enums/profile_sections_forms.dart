import 'package:flutter/widgets.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';

abstract class ProfileFormSections {
  const ProfileFormSections(this.widget);

  final Widget widget;
}

enum WorkerForm implements ProfileFormSections {
  phoneNumberForm(OtpForm()),
  otpForm(
    OtpForm(
      args: OtpFormArgs(
        type: OtpFormType.validateOtp,
      ),
    ),
  ),
  identityDataForm(IdentityDataForm()),
  profileDataForm(ProfileDataForm()),
  workDayDataForm(WorkDayDataForm()),
  addressDataForm(AddressDataForm()),
  paymentMethodData(PaymentMethodDataForm());

  const WorkerForm(this.widget);

  @override
  final Widget widget;
}

enum CompanyForm implements ProfileFormSections {
  phoneNumberForm(OtpForm()),
  otpForm(
    OtpForm(
      args: OtpFormArgs(
        type: OtpFormType.validateOtp,
      ),
    ),
  ),
  companyDataForm(CompanyDataForm()),
  companyDetailForm(CompanyDetailForm()),
  addressDataForm(AddressDataForm());

  const CompanyForm(this.widget);

  @override
  final Widget widget;
}
