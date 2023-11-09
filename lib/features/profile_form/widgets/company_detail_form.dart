import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class CompanyDetailForm extends StatelessWidget {
  const CompanyDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = AppLocalizations.of(context);

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
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.xl,
                      vertical: AppPadding.big,
                    ),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            localization.companyDetails,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                          const Gap(AppPadding.medium),
                          Text(
                            localization.companyDetailsDescription,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText: localization.industry,
                            hintText: localization.selectOne,
                            formControl: state
                                .profileForm!.companyDetailForm.industryControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: localization.title,
                            hintText: localization.enterYourTitle,
                            formControl: state
                                .profileForm!.companyDetailForm.titleControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: localization.description,
                            hintText: localization.enterYourDescription,
                            formControl: state.profileForm!.companyDetailForm
                                .descriptionControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: localization.occupation,
                            hintText: localization.selectTheOccupationYouNeed,
                            formControl: state.profileForm!.companyDetailForm
                                .occupationControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: localization.specialization,
                            hintText: localization.enterYourSpecialization,
                            formControl: state.profileForm!.companyDetailForm
                                .specializationControl,
                          ),
                          const Gap(AppPadding.large),
                          Row(
                            children: [
                              Expanded(
                                child: AppDateInput(
                                  labelText: localization.startingAt,
                                  hintText: localization.selectDate,
                                  formControl: state.profileForm!
                                      .companyDetailForm.statingAtControl,
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppDateInput(
                                  labelText: localization.endingAt,
                                  hintText: localization.selectDate,
                                  formControl: state.profileForm!
                                      .companyDetailForm.endingAtControl,
                                ),
                              ),
                            ],
                          ),
                          const Gap(AppPadding.large),
                          Row(
                            children: [
                              Expanded(
                                child: AppFormInput(
                                  labelText: localization.paymentForHour,
                                  hintText: '0',
                                  formControl: state.profileForm!
                                      .companyDetailForm.paymentForHourControl,
                                  keyboardType: TextInputType.number,
                                  validationMessages: {
                                    ValidationMessage.number: (_) =>
                                        localization.mustBeNumbers,
                                  },
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppFormInput(
                                  labelText: localization.hoursRequired,
                                  hintText: '0',
                                  formControl: state.profileForm!
                                      .companyDetailForm.hoursRequiredControl,
                                  keyboardType: TextInputType.number,
                                  validationMessages: {
                                    ValidationMessage.number: (_) =>
                                        localization.mustBeNumbers,
                                  },
                                ),
                              ),
                            ],
                          ),
                          const Gap(AppPadding.xxl),
                          ReactiveProfileUiFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed:
                                    form.companyDetailForm.currentForm.valid
                                        ? InheritedPageViewForm.of(context).next
                                        : null,
                                text: localization.next,
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
