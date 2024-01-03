import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/data/profile/helpers/helpers.dart';
import 'package:you_might_need_work/data/profile/models/models.dart';

part 'onboarding.freezed.dart';
part 'onboarding.g.dart';

@freezed
class Onboarding with _$Onboarding {
  factory Onboarding({
    @OnboardingStepConverter() required OnboardingStep step,
    @JsonKey(name: 'step_number') required int stepNumber,
    @JsonKey(name: 'total_steps') required int totalSteps,
    required Status status,
  }) = _Onboarding;

  factory Onboarding.fromJson(Map<String, dynamic> json) =>
      _$OnboardingFromJson(json);
}
