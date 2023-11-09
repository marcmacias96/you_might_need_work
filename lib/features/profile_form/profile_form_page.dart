import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/cubit/cubit.dart';
import 'package:you_might_need_work/features/profile_form/enums/enums.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';
import 'package:you_might_need_work/features/profile_form/register_done/register_done.dart';
import 'package:you_might_need_work/features/profile_form/widgets/widgets.dart';
import 'package:you_might_need_work/injection.dart';
import 'package:you_might_need_work/utils/utils.dart';

class ProfileFormArgs extends Equatable {
  const ProfileFormArgs({
    required this.steps,
  });

  final List<ProfileFormSections> steps;

  @override
  List<Object?> get props => [steps];
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
    final actualStep = context.watch<PageViewPositionCubit>().state;
    final profile = (context.read<AuthCubit>().state as Authenticated).profile;
    return BlocProvider(
      create: (context) => getIt<ProfileFormCubit>()..init(profile: profile),
      child: InheritedPageViewForm(
        next: () => _nextPage(
          context,
          controller: pageController,
          actualStep: actualStep,
          totalSteps: args.steps.length,
        ),
        back: () => _previousPage(pageController),
        child: ProfileUiFormBuilder(
          builder: (context, formModel, _) {
            context.read<ProfileFormCubit>().updateModel(formModel);
            final isLoading = context.watch<ProfileFormCubit>().state.isLoading;
            // final isFailure =
            //     context.watch<ProfileFormCubit>().state.failure != null;
            return Scaffold(
              body: SafeArea(
                child: Column(
                  mainAxisAlignment: isLoading
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: isLoading
                      ? [const Center(child: CircularProgressIndicator())]
                      : [
                          StepperIndicator(
                            actualStep: actualStep,
                            totalSteps: args.steps.length,
                          ),
                          Expanded(
                            child: PageView(
                              controller: pageController,
                              physics: const NeverScrollableScrollPhysics(),
                              onPageChanged: (pos) => context
                                  .read<PageViewPositionCubit>()
                                  .positionUpdated(pos),
                              children: [
                                for (final section in args.steps)
                                  section.widget,
                              ],
                            ),
                          ),
                        ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _nextPage(
    BuildContext context, {
    required int actualStep,
    required int totalSteps,
    required PageController controller,
  }) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (actualStep == totalSteps) {
      context.pushReplacementNamed(RegisterDonePage.routeName);
    }
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
