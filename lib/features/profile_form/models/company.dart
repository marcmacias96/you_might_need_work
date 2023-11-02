import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'company.gform.dart';

@Rf()
class Company {
  Company({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.company,
  });

  factory Company.empty() => Company(
        company: '',
      );

  final String company;
}
