import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'profile_data.gform.dart';

@Rf()
class ProfileData {
  ProfileData({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.levelOfStudy,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.ocupation,
  });

  factory ProfileData.empty() => ProfileData(levelOfStudy: '', ocupation: '');

  final String levelOfStudy;
  final String ocupation;
}
