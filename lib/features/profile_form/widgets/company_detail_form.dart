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
                            AppLocalizations.of(context).companyDetails,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                          const Gap(AppPadding.medium),
                          Text(
                            AppLocalizations.of(context)
                                .companyDetailsDescription,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText: AppLocalizations.of(context).industry,
                            hintText: AppLocalizations.of(context).selectOne,
                            formControl: state
                                .profileForm!.companyDetailForm.industryControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: AppLocalizations.of(context).title,
                            hintText:
                                AppLocalizations.of(context).enterYourTitle,
                            formControl: state
                                .profileForm!.companyDetailForm.titleControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: AppLocalizations.of(context).description,
                            hintText: AppLocalizations.of(context)
                                .enterYourDescription,
                            formControl: state.profileForm!.companyDetailForm
                                .descriptionControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: AppLocalizations.of(context).ocupation,
                            hintText: AppLocalizations.of(context)
                                .selectTheOccupationYouNeed,
                            formControl: state.profileForm!.companyDetailForm
                                .occupationControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText:
                                AppLocalizations.of(context).specialization,
                            hintText: AppLocalizations.of(context)
                                .enterYourSpecialization,
                            formControl: state.profileForm!.companyDetailForm
                                .specializationControl,
                          ),
                          const Gap(AppPadding.large),
                          Row(
                            children: [
                              Expanded(
                                child: AppDateInput(
                                  labelText:
                                      AppLocalizations.of(context).startingAt,
                                  hintText:
                                      AppLocalizations.of(context).selectDate,
                                  formControl: state.profileForm!
                                      .companyDetailForm.statingAtControl,
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppDateInput(
                                  labelText:
                                      AppLocalizations.of(context).endingAt,
                                  hintText:
                                      AppLocalizations.of(context).selectDate,
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
                                  labelText: AppLocalizations.of(context)
                                      .paymentForHour,
                                  hintText: '0',
                                  formControl: state.profileForm!
                                      .companyDetailForm.paymentForHourControl,
                                  keyboardType: TextInputType.number,
                                  validationMessages: {
                                    ValidationMessage.number: (_) =>
                                        AppLocalizations.of(context)
                                            .mustBeNumbers,
                                  },
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppFormInput(
                                  labelText: AppLocalizations.of(context)
                                      .hoursRequired,
                                  hintText: '0',
                                  formControl: state.profileForm!
                                      .companyDetailForm.hoursRequiredControl,
                                  keyboardType: TextInputType.number,
                                  validationMessages: {
                                    ValidationMessage.number: (_) =>
                                        AppLocalizations.of(context)
                                            .mustBeNumbers,
                                  },
                                ),
                              ),
                            ],
                          ),
                          const Gap(AppPadding.xxl),
                          ReactiveProfileFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed:
                                    form.companyDetailForm.currentForm.valid
                                        ? InheritedPageViewForm.of(context).next
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
