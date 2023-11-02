import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'identity_data.gform.dart';

@Rf()
class IdentityData {
  IdentityData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.name,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.lastName,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.documentNumber,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.documentType,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.documentIssueDate,
  });

  factory IdentityData.empty() => IdentityData(
        name: '',
        lastName: '',
        documentNumber: '',
        documentType: '',
        documentIssueDate: '',
      );

  final String name;
  final String lastName;
  final String documentNumber;
  final String documentType;
  final String documentIssueDate;
}
