import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                            'Identity data',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            'Enter your details below',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl:
                                state.profileForm!.identityDataForm.nameControl,
                            labelText: 'Name',
                            hintText: 'Enter your name',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The name must not be empty',
                            },
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl: identityForm.lastNameControl,
                            labelText: 'Last name',
                            hintText: 'Enter your last name',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The last name must not be empty',
                            },
                          ),
                          const Gap(AppPadding.xl),
                          AppDropDownField(
                            labelText: 'Document type',
                            hintText: 'Select one',
                            formControl: identityForm.documentTypeControl,
                            items:
                                DocumentType.values.map((e) => e.type).toList(),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            formControl: identityForm.documentNumberControl,
                            labelText: 'Document number',
                            hintText: 'Enter your document number',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The document number must not be empty',
                            },
                            keyboardType: TextInputType.number,
                          ),
                          const Gap(AppPadding.xl),
                          AppDateInput(
                            labelText: 'Document issue date',
                            hintText: 'Select an issue date',
                            formControl: identityForm.documentIssueDateControl,
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The date must not be empty',
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
