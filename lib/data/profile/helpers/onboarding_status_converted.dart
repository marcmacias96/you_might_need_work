import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class OnboardingStatusConverter
    implements JsonConverter<OnboardingStatus, String> {
  const OnboardingStatusConverter();

  @override
  OnboardingStatus fromJson(String value) => OnboardingStatus.fromString(value);

  @override
  String toJson(OnboardingStatus instance) => instance.value;
}
