import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/auth.dart';
import 'package:you_might_need_work/features/auth_form/auth_form.dart';
import 'package:you_might_need_work/features/home/home.dart';
import 'package:you_might_need_work/features/onboarding/onboarding.dart';
import 'package:you_might_need_work/features/profile_form/profile_form.dart';
import 'package:you_might_need_work/features/user_type_form/user_type_form.dart';
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
        builder: (context, state) {
          var args = const OnboardingTypeArgs();
          if (state.extra != null) args = state.extra! as OnboardingTypeArgs;
          return OnboardingPage(
            args: args,
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
      GoRoute(
        path: '/${UserTypeFormPage.routeName}',
        name: UserTypeFormPage.routeName,
        builder: (context, state) => const UserTypeFormPage(),
      ),
    ],
    redirect: (context, state) {
     
      return context.read<AuthCubit>().state.maybeMap(
        orElse: () {
          return null;
        },
        
        unauthenticated: (_) {
          return '/${OnboardingPage.routeName}';
        },
      );
    },
  );
}
