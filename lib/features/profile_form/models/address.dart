import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'address.gform.dart';

@Rf()
class Address {
  Address({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.address,
  });

  factory Address.empty() => Address(
        address: '',
      );

  final String address;
}
