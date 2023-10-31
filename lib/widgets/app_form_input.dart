import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class AppFormInput extends StatelessWidget {
  const AppFormInput({
    required this.keyboardType,
    required this.formControl,
    required this.obscureText,
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
    return AppShadow(
      child: ReactiveTextField<String>(
        maxLength: maxLength,
        obscureText: obscureText,
        formControl: formControl,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        validationMessages: validationMessages,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          counterText: '',
        ),
        onEditingComplete: (_) {
          FocusScope.of(context).nextFocus();
        },
      ),
    );
  }
}
