import 'package:flutter/widgets.dart';
import 'package:you_might_need_work/features/onboarding/onboarding.dart';

enum OnboardingPageView {
  firstOnboarding(
    Onboarding(),
  ),
  secondOnboarding(
    Onboarding(
      args: OnboardingTypeArgs(onboardingType: OnboardingType.secondOnboarding),
    ),
  );

  const OnboardingPageView(this.widget);

  final Widget widget;
}
