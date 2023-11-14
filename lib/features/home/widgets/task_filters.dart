import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/theme/app_colors.dart';
import 'package:you_might_need_work/theme/app_padding.dart';

class TaskFilters extends StatelessWidget {
  const TaskFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final format = DateFormat.yMEd();
    final localization = AppLocalizations.of(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: AppPadding.insetHorizontalLarge,
        child: Column(
          children: [
            const Gap(AppPadding.large),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localization.dateTitle,
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(Images.calendar),
                    const Gap(AppPadding.small),
                    Text(
                      format.format(DateTime.now()),
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: AppColors.grayGray1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(AppPadding.large),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    TaskFilterButton(
                      listLength: 10,
                      height: 180,
                      backgroundColor: AppColors.primary2,
                      textColor: Colors.black,
                      svgAsset: Images.ongoing,
                      title: localization.ongoing,
                      alignment: Alignment.topLeft,
                      onTap: () {},
                    ),
                    const Gap(AppPadding.large),
                    TaskFilterButton(
                      listLength: 2,
                      height: 130,
                      backgroundColor: AppColors.secondary2,
                      textColor: Colors.black,
                      svgAsset: Images.completed,
                      title: localization.completed,
                      alignment: Alignment.topRight,
                      onTap: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    TaskFilterButton(
                      listLength: 1,
                      backgroundColor: AppColors.secondary1,
                      textColor: Colors.black,
                      svgAsset: Images.pending,
                      title: localization.pending,
                      alignment: Alignment.topRight,
                      onTap: () {},
                      height: 130,
                    ),
                    const Gap(AppPadding.large),
                    TaskFilterButton(
                      height: 180,
                      backgroundColor: AppColors.secondary3,
                      textColor: Colors.black,
                      svgAsset: Images.completed,
                      title: localization.cancel,
                      alignment: Alignment.topLeft,
                      onTap: () {},
                      listLength: 180,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TaskFilterButton extends StatelessWidget {
  const TaskFilterButton({
    required this.listLength,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    required this.onTap,
    required this.svgAsset,
    required this.alignment,
    required this.height,
    super.key,
  });

  final String title;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;
  final String svgAsset;
  final AlignmentGeometry alignment;
  final double height;
  final int listLength;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = AppLocalizations.of(context);

    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: () {},
      child: Container(
        padding: AppPadding.insetAllLarge,
        height: height,
        width: MediaQuery.of(context).size.width * 0.44,
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: alignment,
                child: SvgPicture.asset(
                  svgAsset,
                  colorFilter: ColorFilter.mode(
                    textColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: textColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      localization.numOfTasks(listLength),
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: textColor,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: textColor,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
