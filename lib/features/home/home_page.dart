import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:you_might_need_work/features/home/widgets/widgets.dart';
import 'package:you_might_need_work/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SearchHeader(),
            TaskFilters(),
            JobsListTitle(),
            JobsList(),
            SliverToBoxAdapter(
              child: Gap(AppPadding.large),
            ),
          ],
        ),
      ),
    );
  }
}
