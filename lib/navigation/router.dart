import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/auth.dart';
import 'package:you_might_need_work/features/auth_form/auth_form.dart';
import 'package:you_might_need_work/features/home/home.dart';
import 'package:you_might_need_work/features/onboarding/onboarding.dart';
import 'package:you_might_need_work/features/profile_form/profile_form.dart';
import 'package:you_might_need_work/utils/utils.dart';

GoRouter getGoRouter(AuthCubit authCubit) {
  return GoRouter(
    refreshListenable: GoRouterRefreshStream(authCubit.stream),
    routes: [
      GoRoute(
        path: AuthPage.routePath,
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        path: '/${OnboardingPage.routeName}',
        name: OnboardingPage.routeName,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/${ProfileFormPage.routeName}',
        name: ProfileFormPage.routeName,
        builder: (context, state) => const ProfileFormPage(),
      ),
      GoRoute(
        path: '/${AuthFormPage.routeName}',
        name: AuthFormPage.routeName,
        builder: (context, state) {
          final args = state.extra! as AuthFormArgs;
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
    ],
    redirect: (context, state) {
      if (state.fullPath?.contains(AuthFormPage.routeName) ?? false) {
        return null;
      }
      return context.read<AuthCubit>().state.maybeMap(
        orElse: () {
          return null;
        },
        authenticated: (authenticated) async {
          await Future.delayed(
            const Duration(milliseconds: 500),
            () {},
          );
          // final args = state.extra! as AuthFormArgs;
          // if (args.type == AuthFormType.signUp) {
          //   return '/${ProfileFormPage.routeName}';
          // }
          return '/${HomePage.routeName}';
        },
        unauthenticated: (_) {
          return '/${OnboardingPage.routeName}';
        },
      );
    },
  );
}
