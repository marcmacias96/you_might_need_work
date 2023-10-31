import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:you_might_need_work/theme/theme.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class AppDropDownField extends StatelessWidget {
  const AppDropDownField({
    required this.labelText,
    required this.formControl,
    required this.items,
    super.key,
    this.hintText = '',
    this.validationMessages,
    this.onChange,
  });

  final String hintText;
  final String? labelText;
  final FormControl<String> formControl;
  final Map<String, String Function(Object)>? validationMessages;
  final List<String> items;
  final void Function(FormControl<String>)? onChange;

  @override
  Widget build(BuildContext context) {
    return AppShadow(
      child: ReactiveDropdownField<String>(
        formControl: formControl,
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.small,
          vertical: AppPadding.small,
        ),
        elevation: 4,
        hint: Text(hintText),
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
        ),
        borderRadius: BorderRadius.circular(12),
        items: items
            .map(
              (e) => DropdownMenuItem<String>(
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: onChange,
      ),
    );
  }
}
