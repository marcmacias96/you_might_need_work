enum UserType {
  company('COMPANY'),
  admin('admin'),
  employee('EMPLOYEE');

  const UserType(this.type);
  final String type;

  static UserType fromString(String value) {
    return UserType.values.firstWhere(
      (element) => element.type == value,
      orElse: () => UserType.employee,
    );
  }
}
