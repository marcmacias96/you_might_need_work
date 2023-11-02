// ignore_for_file: lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/auth_form/auth_form_page.dart';
import 'package:you_might_need_work/theme/theme.dart';

enum OnboardingType { firstOnboarding, secondOnboarding }

class OnboardingTypeArgs extends Equatable {
  const OnboardingTypeArgs({
    this.onboardingType = OnboardingType.firstOnboarding,
  });

  final OnboardingType onboardingType;

  @override
  List<Object?> get props => [onboardingType];
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({this.args = const OnboardingTypeArgs(), super.key});
  final OnboardingTypeArgs? args;
  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.primary1,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.xxl),
              child: Row(
                mainAxisAlignment:
                    args!.onboardingType == OnboardingType.secondOnboarding
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.end,
                children: [
                  if (args!.onboardingType == OnboardingType.secondOnboarding)
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          OnboardingPage.routeName,
                          extra: const OnboardingTypeArgs(
                            // ignore: avoid_redundant_argument_values
                            onboardingType: OnboardingType.firstOnboarding,
                          ),
                        );
                      },
                      child: Text(
                        'BACK',
                        style: theme.textTheme.headlineMedium!
                            .copyWith(color: AppColors.grayGray1),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      context.pushReplacementNamed(
                        AuthFormPage.routeName,
                        extra: const AuthFormArgs(
                          type: AuthFormType.login,
                        ),
                      );
                    },
                    child: Text(
                      'SKIP',
                      style: theme.textTheme.headlineMedium!
                          .copyWith(color: AppColors.grayGray1),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args!.onboardingType == OnboardingType.firstOnboarding
                        ? 'Schedule Your Jobs'
                        : 'Manage Your Job',
                    style: theme.textTheme.headlineLarge!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: AppPadding.xxl,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.large,
                    ),
                    child: Text(
                      args!.onboardingType == OnboardingType.firstOnboarding
                          ? 'It is a long established fact that a reader will be distracted by the readable content of a page when looking.'
                          : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking.',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.big),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: args!.onboardingType ==
                                    OnboardingType.firstOnboarding
                                ? 16
                                : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: args!.onboardingType ==
                                      OnboardingType.firstOnboarding
                                  ? AppColors.primary1
                                  : AppColors.grayGray1,
                            ),
                          ),
                          const SizedBox(
                            width: AppPadding.medium,
                          ),
                          Container(
                            width: args!.onboardingType ==
                                    OnboardingType.firstOnboarding
                                ? 8
                                : 16,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: args!.onboardingType ==
                                      OnboardingType.firstOnboarding
                                  ? AppColors.grayGray1
                                  : AppColors.primary1,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          args!.onboardingType == OnboardingType.firstOnboarding
                              ? Images.womanWithCalendar
                              : Images.womanWithBoard,
                          width: 300,
                        ),
                      ),
                      SafeArea(
                        top: false,
                        child: GestureDetector(
                          onTap: args!.onboardingType ==
                                  OnboardingType.firstOnboarding
                              ? () {
                                  context.pushNamed(
                                    OnboardingPage.routeName,
                                    extra: const OnboardingTypeArgs(
                                      onboardingType:
                                          OnboardingType.secondOnboarding,
                                    ),
                                  );
                                }
                              : () {
                                  context.pushNamed(
                                    AuthFormPage.routeName,
                                    extra: const AuthFormArgs(
                                      type: AuthFormType.login,
                                    ),
                                  );
                                },
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: AppColors.primary1,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(
                              Icons.arrow_right_alt,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
