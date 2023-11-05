import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class RegistrationProviderConverter implements JsonConverter<UserType, String> {
  const RegistrationProviderConverter();

  @override
  UserType fromJson(String value) => UserType.fromString(value);

  @override
  String toJson(UserType instance) => instance.type;
}
