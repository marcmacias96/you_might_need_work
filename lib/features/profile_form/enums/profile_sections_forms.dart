import 'package:flutter/widgets.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';

abstract class ProfileFormSections {
  const ProfileFormSections(this.widget);

  final Widget widget;
}

enum BaseForm implements ProfileFormSections {
  phoneNumberForm(OtpForm()),
  otpForm(
    OtpForm(
      args: OtpFormArgs(
        type: OtpFormType.validateOtp,
      ),
    ),
  ),
  userTypeForm(UserTypeForm()),
  registerDone(RegisterDone());

  const BaseForm(this.widget);

  @override
  final Widget widget;
}

enum CompanyForm implements ProfileFormSections {
  identityDataForm(IdentityDataForm()),
  profileDataForm(ProfileDataForm()),
  workDayDataForm(WorkDayDataForm()),
  addressDataForm(AddressDataForm()),
  paymentMethodData(PaymentMethodDataForm());

  const CompanyForm(this.widget);

  @override
  final Widget widget;
}
