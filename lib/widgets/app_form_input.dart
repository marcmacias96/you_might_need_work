import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/theme/app_colors.dart';
import 'package:you_might_need_work/theme/app_padding.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class AppFormInput extends StatelessWidget {
  const AppFormInput({
    required this.formControl,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    super.key,
    this.hintText,
    this.labelText,
    this.validationMessages,
    this.textInputAction,
    this.margin,
    this.maxLength,
  });

  final TextInputType keyboardType;
  final String? hintText;
  final String? labelText;
  final FormControl<String> formControl;
  final Map<String, String Function(Object)>? validationMessages;
  final TextInputAction? textInputAction;
  final EdgeInsetsDirectional? margin;
  final bool obscureText;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    final hasErrors = formControl.hasErrors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Column(
            children: [
              Text(
                labelText!,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.grayGray2,
                    ),
              ),
              const SizedBox(height: AppPadding.big),
            ],
          ),
        AppShadow(
          child: Column(
            children: [
              ReactiveTextField<String>(
                maxLength: maxLength,
                obscureText: obscureText,
                formControl: formControl,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                validationMessages: validationMessages,
                decoration: InputDecoration(
                  hintText: hintText,
                  counterText: '',
                ),
                onEditingComplete: (_) {
                  FocusScope.of(context).nextFocus();
                },
              ),
              if (hasErrors) const SizedBox(height: AppPadding.small),
            ],
          ),
        ),
      ],
    );
  }
}
