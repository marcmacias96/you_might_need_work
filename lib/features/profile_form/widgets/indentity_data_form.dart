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
                            localization.identityData,
                            textAlign: TextAlign.start,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            localization.enterYourDetails,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl:
                                state.profileForm!.identityDataForm.nameControl,
                            labelText: localization.name,
                            hintText: localization.enterYourName,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  localization.theFieldCannotBeEmpty,
                            },
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl: identityForm.lastNameControl,
                            labelText: localization.lastName,
                            hintText: localization.enterYourLastName,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  localization.theFieldCannotBeEmpty,
                            },
                          ),
                          const Gap(AppPadding.xl),
                          AppDropDownField(
                            labelText: localization.documentType,
                            hintText: localization.selectOne,
                            formControl: identityForm.documentTypeControl,
                            items:
                                DocumentType.values.map((e) => e.type).toList(),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl: identityForm.documentNumberControl,
                            labelText: localization.documentNumber,
                            hintText: localization.enterDocumentNumber,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  localization.theFieldCannotBeEmpty,
                            },
                            keyboardType: TextInputType.number,
                          ),
                          const Gap(AppPadding.xl),
                          AppDateInput(
                            labelText: localization.documentIssueDate,
                            hintText: localization.selectIssueDate,
                            formControl: identityForm.documentIssueDateControl,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  localization.theFieldCannotBeEmpty,
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
