import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'capacity.gform.dart';

@Rf()
class Capacity {
  Capacity({
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required this.capacity,
  });

  factory Capacity.empty() => Capacity(
        capacity: '',
      );

  final String capacity;
}
