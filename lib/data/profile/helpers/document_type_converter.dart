import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class DocumentTypeConverter implements JsonConverter<DocumentType?, dynamic> {
  const DocumentTypeConverter();

  @override
  DocumentType? fromJson(dynamic value) {
    final enumValue = (value as Map<String, dynamic>)['value'] as String?;
    if (enumValue == null) {
      return null;
    }
    return DocumentType.fromString(enumValue);
  }

  @override
  String toJson(DocumentType? instance) => instance!.type;
}
