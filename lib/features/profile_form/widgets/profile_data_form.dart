import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class ProfileDataForm extends StatelessWidget {
  const ProfileDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BlocBuilder<ProfileFormCubit, ProfileFormState>(
                builder: (context, state) {
                  final profileDataForm = state.profileForm!.profileDataForm;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.large,
                      vertical: AppPadding.big,
                    ),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context).profile,
                            textAlign: TextAlign.start,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            AppLocalizations.of(context).enterYourProfile,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          Row(
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                padding: const EdgeInsets.all(AppPadding.xxl),
                                decoration: BoxDecoration(
                                  color: AppColors.secondary1,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: SvgPicture.asset(
                                  Images.camera,
                                ),
                              ),
                              const SizedBox(
                                width: AppPadding.big,
                              ),
                              Text(
                                AppLocalizations.of(context)
                                    .uploadYourProfilePhoto,
                              ),
                            ],
                          ),
                          const Gap(AppPadding.xl),
                          AppDropDownField(
                            labelText:
                                AppLocalizations.of(context).levelOfStudy,
                            hintText: AppLocalizations.of(context).selectOne,
                            formControl: profileDataForm.levelOfStudyControl,
                            items: EducationLevel.values
                                .map((e) => e.value)
                                .toList(),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText: AppLocalizations.of(context).ocupation,
                            hintText:
                                AppLocalizations.of(context).enterYourOcupation,
                            formControl: profileDataForm.occupationControl,
                          ),
                          const Gap(AppPadding.xxl),
                          ReactiveProfileFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form
                                        .profileDataForm.currentForm.valid
                                    ? () =>
                                        InheritedPageViewForm.of(context).next()
                                    : null,
                                text: AppLocalizations.of(context).next,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
