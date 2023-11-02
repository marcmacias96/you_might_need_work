import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'otp.gform.dart';

@Rf()
class Otp {
  Otp({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.otp,
  });

  factory Otp.empty() => Otp(
        otp: '',
      );

  final String otp;
}
