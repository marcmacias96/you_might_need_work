// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/home/home.dart';
import 'package:you_might_need_work/theme/theme.dart';

class RegistrationDonePage extends StatelessWidget {
  const RegistrationDonePage({super.key});

  static const String routeName = 'registration-done-page';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.primary1,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Text(
              'You Might Need Work',
              style: theme.textTheme.bodyMedium!.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: AppPadding.xxl,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(
                      MediaQuery.of(context).size.width,
                      150,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Images.womanWithBoard),
                    const SizedBox(
                      height: AppPadding.xxl,
                    ),
                    Text(
                      'Complete registration',
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: AppPadding.big,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.grayGray2,
                            ),
                          ),
                          TextSpan(
                            text: 'YouMightNeedWork',
                            style: theme.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: AppPadding.xxl,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          HomePage.routeName,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
