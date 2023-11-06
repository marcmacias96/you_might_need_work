import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/cubit/cubit.dart';
import 'package:you_might_need_work/features/onboarding/onboarding.dart';
import 'package:you_might_need_work/features/profile_form/otp_form/otp_form.dart';
import 'package:you_might_need_work/injection.dart';
import 'package:you_might_need_work/navigation/navigation.dart';
import 'package:you_might_need_work/theme/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter _router;
  final _authCubit = getIt<AuthCubit>();

  @override
  void initState() {
    _router = getGoRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authCubit,
      child: BlocListener<AuthCubit, AuthState>(
        listener: _listener,
        child: MaterialApp.router(
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
          title: 'You Might Need Work',
          theme: AppTheme.theme,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );
  }

  void _listener(BuildContext context, AuthState state) {
    context.read<AuthCubit>().state.maybeMap(
      orElse: () {
        return null;
      },
      authenticated: (value) {
        _router.goNamed(
          OtpFormPage.routeName,
          extra: const OtpFormArgs(),
        );
      },
      unauthenticated: (_) {
        _router.goNamed(OnboardingPage.routeName);
      },
    );
  }
}
