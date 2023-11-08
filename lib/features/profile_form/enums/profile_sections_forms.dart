import 'package:flutter/widgets.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';

abstract class ProfileFormSections {
  const ProfileFormSections(this.widget);

  final Widget widget;
}

enum WorkerForm implements ProfileFormSections {
  identitySetup(IdentityDataForm()),
  basicInfoSetup(ProfileDataForm()),
  workScheduleSetup(WorkDayDataForm()),
  addressSetup(AddressDataForm()),
  bankAccountSetup(PaymentMethodDataForm());

  const WorkerForm(this.widget);

  @override
  final Widget widget;

  static WorkerForm fromString(String value) {
    return WorkerForm.values.firstWhere(
      (element) => element.name == value,
      orElse: () => WorkerForm.identitySetup,
    );
  }

  static List<WorkerForm> getIncompetentSteps(OnboardingStep value) {
    final stepIndex =
        WorkerForm.values.indexOf(WorkerForm.values.byName(value.name));
    return WorkerForm.values.sublist(stepIndex);
  }
}

enum CompanyForm implements ProfileFormSections {
  companyDataForm(CompanyDataForm()),
  companyDetailForm(CompanyDetailForm()),
  addressDataForm(AddressDataForm());

  const CompanyForm(this.widget);

  @override
  final Widget widget;

  static CompanyForm fromString(String value) {
    return CompanyForm.values.firstWhere(
      (element) => element.name == value,
      orElse: () => CompanyForm.companyDataForm,
    );
  }
}
