
import 'package:json_annotation/json_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';

class DocumentTypeConverter implements JsonConverter<DocumentType, String> {
  const DocumentTypeConverter();

  @override
  DocumentType fromJson(String value) => DocumentType.fromString(value);

  @override
  String toJson(DocumentType instance) => instance.type;
}
