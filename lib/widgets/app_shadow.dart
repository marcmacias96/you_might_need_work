import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/theme.dart';

class AppShadow extends StatelessWidget {
  const AppShadow({
    required this.child,
     this.padding, super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grayGray1.withOpacity(0.5),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
