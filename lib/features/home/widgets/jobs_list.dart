import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/l10n/l10n.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class JobsList extends StatelessWidget {
  const JobsList({super.key});

  @override
  Widget build(BuildContext context) {
    final format = DateFormat.yMEd();
    final theme = Theme.of(context);

    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: AppPadding.insetHorizontalLarge,
          child: AppShadow(
            padding: const EdgeInsets.symmetric(
              vertical: AppPadding.small,
            ),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage(Images.avatar),
              ),
              title: Text(
                'Paul Perez',
                style: theme.textTheme.headlineSmall,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    format.format(DateTime.now()),
                    style: theme.textTheme.labelMedium,
                  ),
                  const Gap(AppPadding.medium),
                  const AnimatedLinearProgressIndicator(
                    value: 0.7,
                  ),
                ],
              ),
              trailing: InkWell(
                onTap: () {},
                child: const Icon(Icons.more_vert),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const Gap(AppPadding.large),
    );
  }
}

class JobsListTitle extends StatelessWidget {
  const JobsListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: AppPadding.insetAllLarge,
        child: Row(
          children: [
            Text(
              localization.taskFilterTitle,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
