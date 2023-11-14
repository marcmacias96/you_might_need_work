import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/theme/app_padding.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Padding(
        padding: AppPadding.insetAllLarge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi,\n',
                    style: theme.textTheme.displaySmall,
                  ),
                  TextSpan(
                    text: 'Marco Macias',
                    style: theme.textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Gap(AppPadding.big),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 6,
                  child: AppFormInput(
                    formControl: FormControl<String>(),
                    hintText: 'Search',
                    prefixIcon: Images.search,
                  ),
                ),
                const Gap(AppPadding.big),
                const FilterButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      borderRadius: BorderRadius.circular(AppPadding.medium),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(AppPadding.large),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppPadding.medium),
          color: theme.primaryColor,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
