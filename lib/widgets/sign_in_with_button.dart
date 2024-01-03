
import 'package:flutter/material.dart';

class SignInWithButton extends StatelessWidget {
  const SignInWithButton({
    required this.iconPath, super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        
      ),
      onPressed: onPressed,
      icon: Image.asset(iconPath),
      label: const Text(
        'ElevatedButton.icon',
      ),
    );
  }
}
