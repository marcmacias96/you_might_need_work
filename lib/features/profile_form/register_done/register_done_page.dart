// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/home/home.dart';
import 'package:you_might_need_work/theme/theme.dart';

class RegisterDonePage extends StatelessWidget {
  const RegisterDonePage({super.key});

  static const String routeName = 'register_done';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary1,
        title: Text(
          AppLocalizations.of(context).appTitle,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.primary1,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const Gap(AppPadding.xxl),
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
                    const Gap(AppPadding.xxl),
                    Text(
                      AppLocalizations.of(context).completeRegistration,
                      style: theme.textTheme.titleLarge,
                    ),
                    const Gap(AppPadding.xl),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${AppLocalizations.of(context).welcomeTo} ',
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.grayGray2,
                            ),
                          ),
                          TextSpan(
                            text: AppLocalizations.of(context).appTitle,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(AppPadding.xxl),
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
