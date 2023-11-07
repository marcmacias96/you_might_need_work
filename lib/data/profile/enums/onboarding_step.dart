enum OnboardingStep {
  userTypeSetup('User Type Setup'),
  identitySetup('Identity Setup'),
  basicInfoSetup('Basic info Setup'),
  workScheduleSetup('Work schedule Setup'),
  addressSetup('Address Setup'),
  bankAccountSetup('Bank Account Setup');

  const OnboardingStep(this.value);
  final String value;
  static OnboardingStep fromString(String value) {
    return OnboardingStep.values.firstWhere(
      (element) => element.value == value,
      orElse: () => OnboardingStep.userTypeSetup,
    );
  }
}
