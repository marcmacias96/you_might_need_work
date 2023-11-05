import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/utils/utils.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class WorkDayDataForm extends StatelessWidget {
  const WorkDayDataForm({super.key});

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
                  final workDayDataForm = state.profileForm!.workDayDataForm;

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
                            'Your work day',
                            textAlign: TextAlign.start,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            'Enter the details of your work day',
                            style: theme.textTheme.bodyMedium!
                                .copyWith(color: AppColors.grayGray2),
                          ),
                          const Gap(AppPadding.xl),
                          AppFormInput(
                            labelText: 'Default capacity (total hours)',
                            hintText: 'Enter your capacity',
                            formControl: workDayDataForm.capacityControl,
                          ),
                          const Gap(AppPadding.xl),
                          Text(
                            'Days you work',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: AppColors.grayGray2,
                                ),
                          ),
                          const Gap(AppPadding.xl),
                          DaysYouWork(
                            profileForm: state.profileForm!,
                          ),
                          const Gap(AppPadding.xxl),
                          ReactiveProfileFormConsumer(
                            builder: (context, form, child) {
                              return AppElevatedButton(
                                loading: false,
                                onPressed: form
                                        .workDayDataForm.currentForm.valid
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

class DaysYouWork extends StatefulWidget {
  const DaysYouWork({
    required this.profileForm,
    super.key,
  });

  final ProfileForm profileForm;

  @override
  State<DaysYouWork> createState() => _DaysYouWorkState();
}

class _DaysYouWorkState extends State<DaysYouWork> {
  @override
  Widget build(BuildContext context) {
    final workDayDataForm = widget.profileForm.workDayDataForm;
    final theme = Theme.of(context);

    return SizedBox(
      height: 65,
      child: ListView.separated(
        primary: true,
        itemCount: AvailableDays.values.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const Gap(AppPadding.big),
        itemBuilder: (context, index) {
          final day = AvailableDays.values[index];
          final actualValue = workDayDataForm.availableDaysControl.value ?? [];
          return InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              actualValue.add(day.value);
              workDayDataForm.availableDaysControl.patchValue(actualValue);
              setState(() {});
            },
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grayGray1,
                ),
                borderRadius: BorderRadius.circular(50),
                color:
                    actualValue.contains(day.value) ? AppColors.primary2 : null,
              ),
              alignment: Alignment.center,
              child: Text(
                day.value,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: AppColors.grayGray2),
              ),
            ),
          );
        },
      ),
    );
  }
}
