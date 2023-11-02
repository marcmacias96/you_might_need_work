import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/company.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class CompanyDataForm extends StatelessWidget {
  const CompanyDataForm({super.key});

  static const String routeName = 'company-data-form';

  @override
  Widget build(BuildContext context) {
    final company = Company.empty();
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
                'Company',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
            ),
            SliverToBoxAdapter(
              child: CompanyFormBuilder(
                model: company,
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
                          const SizedBox(
                            height: AppPadding.big,
                          ),
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
                              const Text('Upload your profile photo'),
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Name of the company',
                            hintText: 'Enter your name',
                            formControl: formModel.companyControl,
                          ),
                          const SizedBox(height: AppPadding.xxl),
                          ReactiveCompanyFormConsumer(
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
