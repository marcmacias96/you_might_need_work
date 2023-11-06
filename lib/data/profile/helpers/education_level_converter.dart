import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class EducationLevelConverter implements JsonConverter<EducationLevel, String> {
  const EducationLevelConverter();

  @override
  EducationLevel fromJson(String value) => EducationLevel.fromString(value);

  @override
  String toJson(EducationLevel instance) => instance.value;
}
