import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'credentials.freezed.dart';
part 'credentials.g.dart';
part 'credentials.gform.dart';

@Rf()
@freezed
class Credentials with _$Credentials {
  factory Credentials({
    @RfControl(
      validators: [
        RequiredValidator(),
        EmailValidator(),
      ],
    )
    @JsonKey(name: 'username')
    required String email,
    @RfControl(
      validators: [
        RequiredValidator(),
        MinLengthValidator(6),
      ],
    )
    required String password,
  }) = _Credentials;

  factory Credentials.fromJson(Map<String, dynamic> json) =>
      _$CredentialsFromJson(json);

  factory Credentials.empty() => Credentials(email: '', password: '');
}
