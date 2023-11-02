// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/theme/theme.dart';

class SelectUserFormPage extends StatelessWidget {
  const SelectUserFormPage({super.key});

  static const String routeName = 'select-user-form';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.xxl),
          child: Column(
            children: [
              Text(
                'What type of user are you?',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: AppPadding.big,
              ),
              Text(
                'Enter your details below',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: AppColors.grayGray2),
              ),
              const SizedBox(
                height: AppPadding.xxxl,
              ),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.all(AppPadding.big),
                        backgroundColor: AppColors.secondary1,
                        foregroundColor: AppColors.primary1,
                      ),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(Images.company),
                          const SizedBox(
                            height: AppPadding.small,
                          ),
                          Text(
                            'Company',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: AppPadding.small,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  'You are looking to hire workers for your project?',
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_right_alt,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: AppPadding.big,
                  ),
                  Expanded(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.all(AppPadding.big),
                        backgroundColor: AppColors.secondary2,
                        foregroundColor: AppColors.primary1,
                      ),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(Images.tool),
                          const SizedBox(
                            height: AppPadding.small,
                          ),
                          Text(
                            'Worker',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: AppPadding.small,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  'Are you looking for a company to hire you?',
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_right_alt,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
