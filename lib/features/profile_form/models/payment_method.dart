import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'payment_method.gform.dart';

@Rf()
class PaymentMethod {
  PaymentMethod({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.bank,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.accountNumber,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.accountType,
  });

  factory PaymentMethod.empty() => PaymentMethod(
        bank: '',
        accountNumber: '',
        accountType: '',
      );

  final String bank;
  final String accountNumber;
  final String accountType;
}
