import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_might_need_work/features/auth/auth.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  static const String routePath = '/';

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
   @override
  void initState() {
    context.read<AuthCubit>().authCheck();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
