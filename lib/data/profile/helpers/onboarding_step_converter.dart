import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class OnboardingStepConverter implements JsonConverter<OnboardingStep, String> {
  const OnboardingStepConverter();

  @override
  OnboardingStep fromJson(String value) => OnboardingStep.fromString(value);

  @override
  String toJson(OnboardingStep instance) => instance.value;
}
