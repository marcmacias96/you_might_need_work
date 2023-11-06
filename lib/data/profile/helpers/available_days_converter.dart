import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class AvailableDaysConverter
    implements JsonConverter<List<AvailableDays>, List<String>> {
  const AvailableDaysConverter();

  @override
  List<AvailableDays> fromJson(List<String> values) =>
      values.map(AvailableDays.fromString).toList();

  @override
  List<String> toJson(List<AvailableDays> instances) =>
      instances.map((e) => e.value).toList();
}
