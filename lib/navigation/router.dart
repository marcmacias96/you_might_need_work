import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/auth.dart';
import 'package:you_might_need_work/features/auth_form/auth_form.dart';
import 'package:you_might_need_work/features/home/home.dart';
import 'package:you_might_need_work/features/onboarding/onboarding.dart';
import 'package:you_might_need_work/features/profile_form/otp_form/otp_form.dart';
import 'package:you_might_need_work/features/profile_form/profile_form.dart';
import 'package:you_might_need_work/features/profile_form/register_done/register_done.dart';
import 'package:you_might_need_work/features/profile_form/user_type_form/user_type_form.dart';
import 'package:you_might_need_work/utils/utils.dart';

GoRouter getGoRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: AuthPage.routePath,
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        path: '/${OnboardingPage.routeName}',
        name: OnboardingPage.routeName,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => PageViewPositionCubit(),
            child: const OnboardingPage(),
          );
        },
      ),
      GoRoute(
        path: '/${ProfileFormPage.routeName}',
        name: ProfileFormPage.routeName,
        builder: (context, state) {
          final args = state.extra! as ProfileFormArgs;
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => PageViewPositionCubit()),
            ],
            child: ProfileFormPage(
              args: args,
            ),
          );
        },
      ),
      GoRoute(
        path: '/${AuthFormPage.routeName}',
        name: AuthFormPage.routeName,
        builder: (context, state) {
          final args = state.extra as AuthFormArgs? ??
              const AuthFormArgs(type: AuthFormType.login);
          return AuthFormPage(
            args: args,
          );
        },
      ),
      GoRoute(
        path: '/${HomePage.routeName}',
        name: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/${UserTypeFormPage.routeName}',
        name: UserTypeFormPage.routeName,
        builder: (context, state) => const UserTypeFormPage(),
      ),
      GoRoute(
        path: '/${RegisterDonePage.routeName}',
        name: RegisterDonePage.routeName,
        builder: (context, state) => const RegisterDonePage(),
      ),
      GoRoute(
        path: '/${OtpFormPage.routeName}',
        name: OtpFormPage.routeName,
        builder: (context, state) {
          final args = state.extra! as  OtpFormArgs;
          return  OtpFormPage(
            args: args,
          );
        },
      ),
    ],
  );
}
