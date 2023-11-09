import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class RegistrationProviderConverter
    implements JsonConverter<RegistrationProvider?, dynamic> {
  const RegistrationProviderConverter();

  @override
  RegistrationProvider? fromJson(dynamic value) {
    final enumValue = (value as Map<String, dynamic>?)?['value'] as String?;
    if (enumValue == null) {
      return null;
    }
    return RegistrationProvider.fromString(enumValue);
  }

  @override
  String? toJson(RegistrationProvider? instance) => instance?.value;
}
