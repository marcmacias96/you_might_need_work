import 'package:flutter/material.dart';
import 'package:you_might_need_work/features/profile_form/models/capacity.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class WorkDayDataForm extends StatelessWidget {
  const WorkDayDataForm({super.key});

  static const String routeName = 'work-day-data-form';

  @override
  Widget build(BuildContext context) {
    final capacity = Capacity.empty();
    final days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
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
                'Your work day',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
            ),
            SliverToBoxAdapter(
              child: CapacityFormBuilder(
                model: capacity,
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
                            'Enter the details of your work day',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          AppFormInput(
                            labelText: 'Default capacity (total hours)',
                            hintText: 'Enter your capacity',
                            formControl: formModel.capacityControl,
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          Text(
                            'Days you work',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: AppColors.grayGray2,
                                ),
                          ),
                          const SizedBox(
                            height: AppPadding.big,
                          ),
                          SizedBox(
                            height: 65,
                            child: ListView.builder(
                              primary: true,
                              itemCount: days.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                final day = days[index];
                                return Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.grayGray1,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  margin: const EdgeInsets.only(
                                    right: AppPadding.big,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    day,
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(color: AppColors.grayGray2),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: AppPadding.xxl),
                          ReactiveCapacityFormConsumer(
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
