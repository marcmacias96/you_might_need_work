import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/profile_data.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class ProfileDataForm extends StatelessWidget {
  const ProfileDataForm({super.key});

  static const String routeName = 'profile-data-form';

  @override
  Widget build(BuildContext context) {
    final profileData = ProfileData.empty();

    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ProfileDataFormBuilder(
                model: profileData,
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
                            'Profile',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            'Enter your profile data',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
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
                          AppDropDownField(
                            labelText: 'Level of study',
                            hintText: 'Select one',
                            formControl: formModel.levelOfStudyControl,
                            items: const [
                              'ELEMENTARY_GRADUATE',
                              'TECHNICAL_GRADUATE',
                              'UNDERGRADUATE',
                              'GRADUATE',
                              'DOCTORATE',
                              'CONTINUING_EDUCATION',
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Ocupation',
                            hintText: 'Enter your ocupation',
                            formControl: formModel.ocupationControl,
                          ),
                          const SizedBox(height: AppPadding.xxl),
                          ReactiveProfileDataFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form.form.valid
                                    ? () =>
                                        InheritedPageViewForm.of(context).next()
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
