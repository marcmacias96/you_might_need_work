enum AvailableDays {
  one('1'),
  two('2'),
  three('3'),
  four('4'),
  five('5'),
  six('6'),
  seven('7');

  const AvailableDays(this.value);

  final String value;

  static AvailableDays fromString(String value) {
    return AvailableDays.values.firstWhere(
      (element) => element.value == value,
      orElse: () => AvailableDays.one,
    );
  }
}
