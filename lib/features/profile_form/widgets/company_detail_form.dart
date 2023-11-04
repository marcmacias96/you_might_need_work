import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/company_detail.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class CompanyDetailForm extends StatelessWidget {
  const CompanyDetailForm({super.key});

  static const String routeName = 'company-details-form';

  @override
  Widget build(BuildContext context) {
    final companyDetail = CompanyDetail.empty();
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CompanyDetailFormBuilder(
                model: companyDetail,
                builder: (context, formModel, _) {
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
                            formControl: formModel.industryControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Title',
                            hintText: 'Enter your title',
                            formControl: formModel.titleControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Description',
                            hintText: 'Enter your description',
                            formControl: formModel.descriptionControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Ocupation',
                            hintText: 'Select the occupation you need',
                            formControl: formModel.ocupationControl,
                          ),
                          const Gap(AppPadding.large),
                          AppFormInput(
                            labelText: 'Specialization',
                            hintText: 'Enter your specialization',
                            formControl: formModel.specializationControl,
                          ),
                          const Gap(AppPadding.large),
                          Row(
                            children: [
                              Expanded(
                                child: AppFormInput(
                                  labelText: 'Starting at',
                                  prefixIcon: Images.calendar,
                                  hintText: 'Select date',
                                  formControl: formModel.statingAtControl,
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppFormInput(
                                  labelText: 'Ending at',
                                  prefixIcon: Images.calendar,
                                  hintText: 'Select date',
                                  formControl: formModel.endingAtControl,
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
                                  formControl: formModel.paymentForHourControl,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              const Gap(AppPadding.large),
                              Expanded(
                                child: AppFormInput(
                                  labelText: 'hours required',
                                  hintText: '0',
                                  formControl: formModel.hoursRequiredControl,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                          const Gap(AppPadding.xxl),
                          ReactiveCompanyDetailFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form.form.valid
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
