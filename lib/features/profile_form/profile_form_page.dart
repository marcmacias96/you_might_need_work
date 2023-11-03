import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you_might_need_work/features/profile_form/enums/enums.dart';
import 'package:you_might_need_work/utils/utils.dart';

class ProfileFormArgs extends Equatable {
  const ProfileFormArgs({required this.formSections});

  final List<ProfileFormSections> formSections;

  @override
  List<Object?> get props => [formSections];
}


class ProfileFormPage extends StatelessWidget {
  const ProfileFormPage({
    required this.args,
    super.key,
  });

  static const String routeName = 'profile-form';

  final ProfileFormArgs args;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return InheritedPageViewForm(
      next: () => _nextPage(pageController),
      back: () => _previousPage(pageController),
      child: Builder(
        builder: (context) => Scaffold(
          body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.from(args.formSections),
          ),
        ),
      ),
    );
  }

  void _nextPage(PageController controller) {

  }
  void _previousPage(PageController controller) {

  }
}
