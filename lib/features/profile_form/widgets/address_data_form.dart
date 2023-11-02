import 'package:flutter/material.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/features/profile_form/models/address.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class AddressDataForm extends StatelessWidget {
  const AddressDataForm({super.key});

  static const String routeName = 'address-data-form';

  @override
  Widget build(BuildContext context) {
    final address = Address.empty();
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
                'Address',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
            ),
            SliverToBoxAdapter(
              child: AddressFormBuilder(
                model: address,
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
                            'Enter your address',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Address',
                            prefixIcon: Images.locationPin,
                            hintText: 'Enter your address',
                            formControl: formModel.addressControl,
                          ),
                          const SizedBox(height: AppPadding.xxl),
                          ReactiveAddressFormConsumer(
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
