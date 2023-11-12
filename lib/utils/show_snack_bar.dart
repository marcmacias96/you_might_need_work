import 'package:flutter/material.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

void showSnackBar(
  BuildContext context,
  String message, {
  SnackBarType type = SnackBarType.success,
}) {

  final isSuccess = type == SnackBarType.success;
  final snackBar = SnackBar(
    backgroundColor: AppColors.primary1,
    behavior: SnackBarBehavior.floating,
    elevation: 10,
    content: SnackBarContent(
      isSuccess: isSuccess,
      message: message,
    ),
  );

  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(snackBar);
}

enum SnackBarType { error, success }
