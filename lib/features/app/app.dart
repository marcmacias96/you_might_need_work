import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:you_might_need_work/navigation/navigation.dart';
import 'package:you_might_need_work/theme/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter _router;

  @override
  void initState() {
    _router = getGoRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'You Might Need Work',
      theme: AppTheme.theme,
    );
  }
}
