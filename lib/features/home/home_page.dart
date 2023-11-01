import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you_might_need_work/features/auth/auth.dart';
import 'package:you_might_need_work/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              child: const Text('Sign Out'),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.secondary1,
                foregroundColor: AppColors.primary1,
              ),
              onPressed: () {},
              child: const Text(
                'Filled Button',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
