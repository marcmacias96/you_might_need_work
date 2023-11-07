import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/profile_form.dart';
import 'package:you_might_need_work/theme/theme.dart';

class UserTypeFormPage extends StatelessWidget {
  const UserTypeFormPage({super.key});

  static const String routeName = 'select-user-form';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: AppPadding.xl,
        title: Text(
          localization.appTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.xl,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localization.selectUserTitle,
                style: theme.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: AppPadding.big,
              ),
              Text(
                localization.enterYourDetails,
                textAlign: TextAlign.start,
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
                      onPressed: () {
                        context.pushNamed(
                          ProfileFormPage.routeName,
                          extra: const ProfileFormArgs(
                            steps: CompanyForm.values,
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(Images.company),
                          const SizedBox(
                            height: AppPadding.small,
                          ),
                          Text(
                            localization.company,
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
                                  localization.companyDescription,
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
                      onPressed: () {
                        context.pushNamed(
                          ProfileFormPage.routeName,
                          extra: const ProfileFormArgs(
                            steps: WorkerForm.values,
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(Images.tool),
                          const SizedBox(
                            height: AppPadding.small,
                          ),
                          Text(
                            localization.worker,
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
                                  localization.workerDescription,
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
