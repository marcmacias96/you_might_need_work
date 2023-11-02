import 'package:flutter/material.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/company_detail.dart';
import 'package:you_might_need_work/theme/theme.dart';
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
            SliverAppBar.medium(
              elevation: 0,
              centerTitle: true,
              title: Text(
                'Company details',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
            ),
            SliverToBoxAdapter(
              child: CompanyDetailFormBuilder(
                model: companyDetail,
                builder: (context, formModel, _) {
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
                            'Finally, please enter the following information',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Select your industry',
                            hintText: 'Select your industry',
                            formControl: formModel.industryControl,
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Title',
                            hintText: 'Enter your title',
                            formControl: formModel.titleControl,
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Description',
                            hintText: 'Enter your description',
                            formControl: formModel.descriptionControl,
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Ocupation',
                            hintText: 'Select the occupation you need',
                            formControl: formModel.ocupationControl,
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Specialization',
                            hintText: 'Enter your specialization',
                            formControl: formModel.specializationControl,
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
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
                              const SizedBox(
                                width: AppPadding.big,
                              ),
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
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: AppFormInput(
                                  labelText: 'Payment for hour',
                                  hintText: '',
                                  formControl: formModel.paymentForHourControl,
                                ),
                              ),
                              const SizedBox(
                                width: AppPadding.big,
                              ),
                              Expanded(
                                child: AppFormInput(
                                  labelText: 'hours required',
                                  hintText: '',
                                  formControl: formModel.hoursRequiredControl,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppPadding.xxl),
                          ReactiveCompanyDetailFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form.form.valid ? () => () {} : null,
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
