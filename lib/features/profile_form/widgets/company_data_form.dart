import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class CompanyDataForm extends StatelessWidget {
  const CompanyDataForm({super.key});

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
                  final companyDataForm = state.profileForm!.companyDataForm;
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
                            localization.company,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
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
                              const Gap(AppPadding.xl),
                              Text(
                                localization.uploadYourProfilePhoto,
                              ),
                            ],
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText: localization.nameOfTheCompany,
                            hintText: localization.enterYourName,
                            formControl: companyDataForm.companyControl,
                          ),
                          const Gap(AppPadding.xl),
                          Text(
                            localization.wantTo,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: AppColors.grayGray2,
                                ),
                          ),
                          const Gap(AppPadding.medium),
                          CompanyFeedback(
                            feedbackControl: state
                                .profileForm!.companyDataForm.feedbackControl,
                          ),
                          const SizedBox(height: AppPadding.xl),
                          ReactiveProfileFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed:
                                    form.companyDataForm.currentForm.valid
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

class CompanyFeedback extends StatefulWidget {
  const CompanyFeedback({required this.feedbackControl, super.key});
  final FormControl<String> feedbackControl;
  @override
  State<CompanyFeedback> createState() => _CompanyFeedbackState();
}

class _CompanyFeedbackState extends State<CompanyFeedback> {
  @override
  Widget build(BuildContext context) {
    final feedbackControl = widget.feedbackControl;
    final localization = AppLocalizations.of(context);
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final feedback = FeedbackOptions.values[index];
        return RadioListTile(
          contentPadding: EdgeInsets.zero,
          groupValue: feedbackControl.value ?? '',
          value: feedback.value,
          onChanged: (value) {
            feedbackControl.patchValue(value);
            setState(() {});
          },
          title: Text(
            feedback.getTranslation(localization),
          ),
        );
      },
      separatorBuilder: (context, index) => const Gap(AppPadding.extraSmall),
      itemCount: FeedbackOptions.values.length,
    );
  }
}
