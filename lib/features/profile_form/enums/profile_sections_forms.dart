import 'package:flutter/widgets.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';

abstract class ProfileFormSections {
  const ProfileFormSections(this.widget);

  final Widget widget;
}


enum WorkerForm implements ProfileFormSections {
  identityDataForm(IdentityDataForm()),
  profileDataForm(ProfileDataForm()),
  workDayDataForm(WorkDayDataForm()),
  addressDataForm(AddressDataForm()),
  paymentMethodData(PaymentMethodDataForm()),
  phoneNumberForm(OtpForm()),
  otpForm(
    OtpForm(
      args: OtpFormArgs(
        type: OtpFormType.validateOtp,
      ),
    ),
  ),
  registerDone(RegisterDone());

  const WorkerForm(this.widget);

  @override
  final Widget widget;
}

enum CompanyForm implements ProfileFormSections {
  companyDataForm(CompanyDataForm()),
  companyDetailForm(CompanyDetailForm()),
  addressDataForm(AddressDataForm()),
  phoneNumberForm(OtpForm()),
  otpForm(
    OtpForm(
      args: OtpFormArgs(
        type: OtpFormType.validateOtp,
      ),
    ),
  ),
  registerDone(RegisterDone());

  const CompanyForm(this.widget);

  @override
  final Widget widget;
}
