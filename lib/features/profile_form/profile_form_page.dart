import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you_might_need_work/data/profile/enums/profile_type.dart';
import 'package:you_might_need_work/features/profile_form/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';
import 'package:you_might_need_work/utils/utils.dart';

class ProfileFormArgs extends Equatable {
  const ProfileFormArgs({required this.profileType});

  final ProfileType profileType;

  @override
  List<Object?> get props => [];
}

class ProfileFormPage extends HookWidget {
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
        builder: (context) {
          final actualStep = context.watch<PageViewPositionCubit>().state;
          final actualForm = args.profileType == ProfileType.company
              ? CompanyForm.values as List<ProfileFormSections>
              : WorkerForm.values;
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  StepperIndicator(
                    actualStep: actualStep,
                    totalSteps: actualForm.length,
                  ),
                  Expanded(
                    child: PageView(
                      controller: pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (pos) => context
                          .read<PageViewPositionCubit>()
                          .positionUpdated(pos),
                      children: [
                        for (final section in actualForm) section.widget,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _nextPage(PageController controller) {
    FocusManager.instance.primaryFocus?.unfocus();
    controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _previousPage(PageController controller) {
    FocusManager.instance.primaryFocus?.unfocus();
    controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
