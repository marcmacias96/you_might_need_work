import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/theme.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.text,
    required this.loading,
    super.key,
    this.onPressed,
    this.mainAxisSize = MainAxisSize.min,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool loading;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: mainAxisSize,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          child: loading
              ? const Padding(
                  padding: AppPadding.insetAllBig,
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: AppColors.white,
                  ),
                )
              : Text(text),
        ),
      ],
    );
  }
}
