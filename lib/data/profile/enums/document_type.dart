enum DocumentType {
  passport('PASSPORT'),
  stateId('STATE_ID'),
  greenCard('GREEN_CARD'),
  driverLicense('DRIVER_LICENSE'),
  immigrationDocument('IMMIGRATION_DOCUMENT');

  const DocumentType(this.type);

  final String type;

  static DocumentType fromString(String value) {
    return DocumentType.values.firstWhere(
      (element) => element.type == value,
      orElse: () => DocumentType.passport,
    );
  }
}
