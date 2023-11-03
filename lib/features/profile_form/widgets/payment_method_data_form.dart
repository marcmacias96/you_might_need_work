import 'package:flutter/material.dart';
import 'package:you_might_need_work/features/profile_form/models/payment_method.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class PaymentMethodDataForm extends StatelessWidget {
  const PaymentMethodDataForm({super.key});

  static const String routeName = 'payment-method-data-form';

  @override
  Widget build(BuildContext context) {
    final paymentMethod = PaymentMethod.empty();
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: PaymentMethodFormBuilder(
                model: paymentMethod,
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
                            'Payment method',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            'Enter your bank details for your future payments',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const SizedBox(height: AppPadding.big),
                          AppDropDownField(
                            labelText: 'Select the bank',
                            hintText: 'Select one',
                            formControl: formModel.bankControl,
                            items: const [
                              'BANK_OF_AMERICA',
                            ],
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Account number',
                            hintText: 'Enter your account number',
                            formControl: formModel.accountNumberControl,
                            
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: AppPadding.big),
                          AppDropDownField(
                            labelText: 'Account type',
                            hintText: 'Select one',
                            formControl: formModel.accountTypeControl,
                            items: const [
                              'SAVINGS_ACCOUNT',
                            ],
                          ),
                          const SizedBox(height: AppPadding.big),
                          const SizedBox(height: AppPadding.xxl),
                          ReactivePaymentMethodFormConsumer(
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
