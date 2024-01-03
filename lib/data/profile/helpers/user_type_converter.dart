import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class UserTypeConverter implements JsonConverter<UserType?, dynamic> {
  const UserTypeConverter();

  @override
  UserType? fromJson(dynamic value) {
    final enumValue = (value as Map<String, dynamic>)['value'] as String?;
    if (enumValue == null) {
      return null;
    }
    return UserType.fromString(enumValue);
  }

  @override
  String toJson(UserType? instance) => instance!.type;
}
