import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/features/auth/auth.dart';
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
    _router = getGoRouter(_authCubit);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _authCubit,
      child: MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        title: 'You Might Need Work',
        theme: AppTheme.theme,
      ),
    );
  }
}
