enum OnboardingStatus {
  processing('PROCESSING'),
  approved('APPROVED'),
  denied('DENIED'),
  expired('EXPIRED'),
  completed('COMPLETED'),
  initial('INITIAL'),
  locked('LOCKED');

  const OnboardingStatus(this.value);

  final String value;

  static OnboardingStatus fromString(String value) {
    return OnboardingStatus.values.firstWhere(
      (element) => element.value == value,
      orElse: () => OnboardingStatus.initial,
    );
  }
}
