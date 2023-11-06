import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class PaymentMethodDataForm extends StatelessWidget {
  const PaymentMethodDataForm({super.key});

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
                  final paymentMethodForm =
                      state.profileForm!.paymentMethodForm;

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
                            AppLocalizations.of(context).paymentMethod,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            AppLocalizations.of(context)
                                .paymentMethodDescription,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppDropDownField(
                            labelText: AppLocalizations.of(context).selectBank,
                            hintText: AppLocalizations.of(context).selectOne,
                            formControl: paymentMethodForm.bankControl,
                            items: const [
                              'BANK_OF_AMERICA',
                            ],
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText:
                                AppLocalizations.of(context).accountNumber,
                            hintText: AppLocalizations.of(context)
                                .enterYourAccountNumber,
                            formControl: paymentMethodForm.accountNumberControl,
                            keyboardType: TextInputType.number,
                          ),
                          const Gap(AppPadding.xl),
                          AppDropDownField(
                            labelText: AppLocalizations.of(context).accountType,
                            hintText: AppLocalizations.of(context).selectOne,
                            formControl: paymentMethodForm.accountTypeControl,
                            items: const [
                              'SAVINGS_ACCOUNT',
                            ],
                          ),
                          const Gap(AppPadding.xxxl),
                          ReactiveProfileFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form
                                        .paymentMethodForm.currentForm.valid
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
