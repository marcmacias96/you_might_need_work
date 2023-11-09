import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class EducationLevelConverter
    implements JsonConverter<EducationLevel?, dynamic> {
  const EducationLevelConverter();

  @override
  EducationLevel? fromJson(dynamic value) {
    final enumValue = (value as Map<String, dynamic>)['value'] as String?;
    if (enumValue == null) {
      return null;
    }
    return EducationLevel.fromString(enumValue);
  }

  @override
  String? toJson(EducationLevel? instance) => instance?.value;
}
