import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/identity_data.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class IdentityDataForm extends StatelessWidget {
  const IdentityDataForm({super.key});

  static const String routeName = 'identity-data-form';

  @override
  Widget build(BuildContext context) {
    final identityData = IdentityData.empty();

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
                'Identity data',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
            ),
            SliverToBoxAdapter(
              child: IdentityDataFormBuilder(
                model: identityData,
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
                            'Enter your details below',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            formControl: formModel.nameControl,
                            labelText: 'Name',
                            hintText: 'Enter your name',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The name must not be empty',
                            },
                          ),
                          const SizedBox(height: AppPadding.big),
                          AppFormInput(
                            formControl: formModel.lastNameControl,
                            labelText: 'Last name',
                            hintText: 'Enter your last name',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The last name must not be empty',
                            },
                          ),
                          const SizedBox(height: AppPadding.big),
                          AppDropDownField(
                            labelText: 'Document type',
                            formControl: formModel.documentTypeControl,
                            items: const [
                              'PASSPORT',
                              'STATE_ID',
                              'GREEN_CARD',
                              'DRIVER_LICENSE',
                              'IMMIGRATION_DOCUMENT',
                            ],
                          ),
                          const SizedBox(height: AppPadding.big),
                          AppFormInput(
                            formControl: formModel.documentNumberControl,
                            labelText: 'Document number',
                            hintText: 'Enter your document number',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The document number must not be empty',
                            },
                          ),
                          const SizedBox(height: AppPadding.big),
                          AppFormInput(
                            prefixIcon: Images.calendar,
                            formControl: formModel.documentIssueDateControl,
                            labelText: 'Document issue date',
                            hintText: 'Select an issue date',
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                                  'The date must not be empty',
                            },
                          ),
                          const SizedBox(height: AppPadding.xxl),
                          ReactiveIdentityDataFormConsumer(
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
