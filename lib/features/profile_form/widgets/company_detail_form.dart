import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
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
                            'Company details',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                          const Gap(AppPadding.medium),
                          Text(
                            'Finally, please enter the following information',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText: 'Select your industry',
                            hintText: 'Select your industry',
                            formControl: state
                                .profileForm!.companyDetailForm.industryControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Title',
                            hintText: 'Enter your title',
                            formControl: state
                                .profileForm!.companyDetailForm.titleControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Description',
                            hintText: 'Enter your description',
                            formControl: state.profileForm!.companyDetailForm
                                .descriptionControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Ocupation',
                            hintText: 'Select the occupation you need',
                            formControl: state.profileForm!.companyDetailForm
                                .occupationControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Specialization',
                            hintText: 'Enter your specialization',
                            formControl: state.profileForm!.companyDetailForm
                                .specializationControl,
                          ),
                          const Gap(AppPadding.large),
                          Row(
                            children: [
                              Expanded(
                                child: AppDateInput(
                                  labelText: 'Starting at',
                                  hintText: 'Select a date',
                                  formControl: state.profileForm!
                                        .companyDetailForm.statingAtControl,
                                ),
                              ),
                              const Gap(AppPadding.large),
                               Expanded(
                                child: AppDateInput(
                                  labelText: 'Ending at',
                                  hintText: 'Select a date',
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
                                  labelText: 'Payment for hour',
                                  hintText: '0',
                                  formControl: state.profileForm!
                                      .companyDetailForm.paymentForHourControl,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppFormInput(
                                  labelText: 'hours required',
                                  hintText: '0',
                                  formControl: state.profileForm!
                                      .companyDetailForm.hoursRequiredControl,
                                  keyboardType: TextInputType.number,
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
                                text: 'Continue',
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
