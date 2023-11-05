enum EducationLevel {
  elementaryGraduate('ELEMENTARY_GRADUATE'),
  technicalGraduate('TECHNICAL_GRADUATE'),
  undergraduate('UNDERGRADUATE'),
  graduate('GRADUATE'),
  doctorate('DOCTORATE'),
  continuingEducation('CONTINUING_EDUCATION');

  const EducationLevel(this.value);

  final String value;

  static EducationLevel fromString(String value) {
    return EducationLevel.values.firstWhere(
      (element) => element.value == value,
      orElse: () => EducationLevel.undergraduate,
    );
  }
}
