import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class IdentityDataForm extends StatelessWidget {
  const IdentityDataForm({super.key});

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
                  final identityForm = state.profileForm!.identityDataForm;
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
                            AppLocalizations.of(context).identityData,
                            textAlign: TextAlign.start,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            AppLocalizations.of(context).enterYourDetails,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl:
                                state.profileForm!.identityDataForm.nameControl,
                            labelText: AppLocalizations.of(context).name,
                            hintText:
                                AppLocalizations.of(context).enterYourName,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  AppLocalizations.of(context)
                                      .theFieldCannotBeEmpty,
                            },
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl: identityForm.lastNameControl,
                            labelText: AppLocalizations.of(context).lastName,
                            hintText:
                                AppLocalizations.of(context).enterYourLastName,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  AppLocalizations.of(context)
                                      .theFieldCannotBeEmpty,
                            },
                          ),
                          const Gap(AppPadding.xl),
                          AppDropDownField(
                            labelText:
                                AppLocalizations.of(context).documentType,
                            hintText: AppLocalizations.of(context).selectOne,
                            formControl: identityForm.documentTypeControl,
                            items:
                                DocumentType.values.map((e) => e.type).toList(),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl: identityForm.documentNumberControl,
                            labelText:
                                AppLocalizations.of(context).documentNumber,
                            hintText: AppLocalizations.of(context)
                                .enterDocumentNumber,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  AppLocalizations.of(context)
                                      .theFieldCannotBeEmpty,
                            },
                            keyboardType: TextInputType.number,
                          ),
                          const Gap(AppPadding.xl),
                          AppDateInput(
                            labelText:
                                AppLocalizations.of(context).documentIssueDate,
                            hintText:
                                AppLocalizations.of(context).selectIssueDate,
                            formControl: identityForm.documentIssueDateControl,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  AppLocalizations.of(context)
                                      .theFieldCannotBeEmpty,
                            },
                          ),
                          const Gap(AppPadding.xxl),
                          ReactiveProfileFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form
                                        .identityDataForm.currentForm.valid
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
