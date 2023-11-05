enum RegistrationProvider {
  apple('APPLE'),
  google('GOOGLE');

  const RegistrationProvider(this.value);
  final String value;

    static RegistrationProvider fromString(String value) {
    return RegistrationProvider.values.firstWhere(
      (element) => element.value == value,
      orElse: () => RegistrationProvider.google,
    );
  }
}
