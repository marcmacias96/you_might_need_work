import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/theme.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.loading,
    this.text,
    super.key,
    this.onPressed,
    this.mainAxisSize = MainAxisSize.min,
    this.iconData,
  });

  final String? text;
  final VoidCallback? onPressed;
  final bool loading;
  final MainAxisSize mainAxisSize;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: mainAxisSize,
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: ElevatedButton(
              onPressed: onPressed,
              child: loading
                  ? const Padding(
                      padding: AppPadding.insetAllBig,
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: AppColors.white,
                      ),
                    )
                  : text != null
                      ? Text(text!)
                      : iconData != null
                          ? Icon(
                              iconData,
                            )
                          : Container(),
            ),
          ),
        ),
      ],
    );
  }
}
