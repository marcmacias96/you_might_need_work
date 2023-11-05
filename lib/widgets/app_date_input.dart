import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:you_might_need_work/assets/assets.dart';
import 'package:you_might_need_work/theme/app_colors.dart';
import 'package:you_might_need_work/theme/app_padding.dart';
import 'package:you_might_need_work/widgets/widgets.dart';

class AppDateInput extends StatelessWidget {
  const AppDateInput({
    required this.formControl,
    required this.labelText,
    super.key,
    this.hintText,
    this.validationMessages,
  });

  final FormControl<DateTime> formControl;
  final String? hintText;
  final String labelText;
  final Map<String, String Function(Object)>? validationMessages;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.grayGray2,
              ),
        ),
        const Gap(AppPadding.big),
        AppShadow(
          child: ReactiveDateTimePicker(
            validationMessages: validationMessages,
            style: theme.textTheme.bodyMedium,
            decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints.tight(
                const Size(40, 20),
              ),
              prefixIcon: SvgPicture.asset(
                Images.calendar,
                height: 2,
                width: 2,
              ),
              hintText: hintText,
            ),
            formControl: formControl,
          ),
        ),
      ],
    );
  }
}
