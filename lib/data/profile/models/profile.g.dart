// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      documentType: const DocumentTypeConverter()
          .fromJson(json['documentType'] as String),
      documentNumber: json['documentNumber'] as String,
      rawPassword: json['rawPassword'] as String,
      phone: json['phone'] as String,
      playerId: json['playerId'] as String,
      userType: const UserTypeConverter().fromJson(json['userType'] as String),
      displayName: json['displayName'] as String,
      occupationTitle: json['occupationTitle'] as String,
      address: json['address'] as String,
      isActive: json['isActive'] as bool?,
      isPhoneValidated: json['isPhoneValidated'] as bool?,
      feedback: json['feedback'] as String?,
      defaultCapacity: json['defaultCapacity'] as int?,
      availableDays: _$JsonConverterFromJson<List<String>, List<AvailableDays>>(
          json['availableDays'], const AvailableDaysConverter().fromJson),
      registrationProvider: $enumDecodeNullable(
          _$RegistrationProviderEnumMap, json['registrationProvider']),
      industries:
          (json['industries'] as List<dynamic>?)?.map((e) => e as int).toList(),
      educationLevel: _$JsonConverterFromJson<String, EducationLevel>(
          json['educationLevel'], const EducationLevelConverter().fromJson),
      latitude: json['latitude'] as int?,
      longitude: json['longitude'] as int?,
      documentIssueDate: json['documentIssueDate'] == null
          ? null
          : DateTime.parse(json['documentIssueDate'] as String),
      isDocumentValidated: json['isDocumentValidated'] as bool?,
      isBasicInfoSetupCompleted: json['isBasicInfoSetupCompleted'] as bool?,
      isWorkScheduleSetupCompleted:
          json['isWorkScheduleSetupCompleted'] as bool?,
      isAddressSetupCompleted: json['isAddressSetupCompleted'] as bool?,
      isBankAccountSetupCompleted: json['isBankAccountSetupCompleted'] as bool?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) {
  final val = <String, dynamic>{
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'documentType': const DocumentTypeConverter().toJson(instance.documentType),
    'documentNumber': instance.documentNumber,
    'rawPassword': instance.rawPassword,
    'phone': instance.phone,
    'playerId': instance.playerId,
    'userType': const UserTypeConverter().toJson(instance.userType),
    'displayName': instance.displayName,
    'occupationTitle': instance.occupationTitle,
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isActive', instance.isActive);
  writeNotNull('isPhoneValidated', instance.isPhoneValidated);
  writeNotNull('feedback', instance.feedback);
  writeNotNull('defaultCapacity', instance.defaultCapacity);
  writeNotNull(
      'availableDays',
      _$JsonConverterToJson<List<String>, List<AvailableDays>>(
          instance.availableDays, const AvailableDaysConverter().toJson));
  writeNotNull('registrationProvider',
      _$RegistrationProviderEnumMap[instance.registrationProvider]);
  writeNotNull('industries', instance.industries);
  writeNotNull(
      'educationLevel',
      _$JsonConverterToJson<String, EducationLevel>(
          instance.educationLevel, const EducationLevelConverter().toJson));
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull(
      'documentIssueDate', instance.documentIssueDate?.toIso8601String());
  writeNotNull('isDocumentValidated', instance.isDocumentValidated);
  writeNotNull('isBasicInfoSetupCompleted', instance.isBasicInfoSetupCompleted);
  writeNotNull(
      'isWorkScheduleSetupCompleted', instance.isWorkScheduleSetupCompleted);
  writeNotNull('isAddressSetupCompleted', instance.isAddressSetupCompleted);
  writeNotNull(
      'isBankAccountSetupCompleted', instance.isBankAccountSetupCompleted);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$RegistrationProviderEnumMap = {
  RegistrationProvider.apple: 'apple',
  RegistrationProvider.google: 'google',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
