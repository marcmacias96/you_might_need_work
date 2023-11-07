// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: json['id'] as String?,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      documentType:
          const DocumentTypeConverter().fromJson(json['document_type']),
      documentNumber: json['document_number'] as String?,
      rawPassword: json['raw_password'] as String?,
      phone: json['phone'] as String?,
      playerId: json['player_id'] as String?,
      userType: const UserTypeConverter().fromJson(json['user_type']),
      displayName: json['display_name'] as String?,
      occupationTitle: json['occupation_title'] as String?,
      address: json['address'] as String?,
      onboarding:
          Onboarding.fromJson(json['on_boarding'] as Map<String, dynamic>),
      isPhoneValidated: json['is_phone_validated'] as bool,
      isActive: json['is_active'] as bool?,
      feedback: json['feedback'] as String?,
      defaultCapacity: json['default_capacity'] as int?,
      availableDays: _$JsonConverterFromJson<List<String>, List<AvailableDays>>(
          json['available_days'], const AvailableDaysConverter().fromJson),
      registrationProvider: const RegistrationProviderConverter()
          .fromJson(json['registration_provider']),
      industries:
          (json['industries'] as List<dynamic>?)?.map((e) => e as int).toList(),
      educationLevel:
          const EducationLevelConverter().fromJson(json['education_level']),
      latitude: json['latitude'] as int?,
      longitude: json['longitude'] as int?,
      documentIssueDate: json['document_issue_date'] == null
          ? null
          : DateTime.parse(json['document_issue_date'] as String),
      isDocumentValidated: json['is_document_validated'] as bool?,
      isBasicInfoSetupCompleted: json['is_basic_info_setup_completed'] as bool?,
      isWorkScheduleSetupCompleted:
          json['is_work_schedule_setup_completed'] as bool?,
      isAddressSetupCompleted: json['is_address_setup_completed'] as bool?,
      isBankAccountSetupCompleted:
          json['is_bank_account_setup_completed'] as bool?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'document_type':
        const DocumentTypeConverter().toJson(instance.documentType),
    'document_number': instance.documentNumber,
    'raw_password': instance.rawPassword,
    'phone': instance.phone,
    'player_id': instance.playerId,
    'user_type': const UserTypeConverter().toJson(instance.userType),
    'display_name': instance.displayName,
    'occupation_title': instance.occupationTitle,
    'address': instance.address,
    'on_boarding': instance.onboarding,
    'is_phone_validated': instance.isPhoneValidated,
    'is_active': instance.isActive,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('feedback', instance.feedback);
  val['default_capacity'] = instance.defaultCapacity;
  writeNotNull(
      'available_days',
      _$JsonConverterToJson<List<String>, List<AvailableDays>>(
          instance.availableDays, const AvailableDaysConverter().toJson));
  writeNotNull(
      'registration_provider',
      const RegistrationProviderConverter()
          .toJson(instance.registrationProvider));
  writeNotNull('industries', instance.industries);
  writeNotNull('education_level',
      const EducationLevelConverter().toJson(instance.educationLevel));
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull(
      'document_issue_date', instance.documentIssueDate?.toIso8601String());
  writeNotNull('is_document_validated', instance.isDocumentValidated);
  writeNotNull(
      'is_basic_info_setup_completed', instance.isBasicInfoSetupCompleted);
  writeNotNull('is_work_schedule_setup_completed',
      instance.isWorkScheduleSetupCompleted);
  writeNotNull('is_address_setup_completed', instance.isAddressSetupCompleted);
  writeNotNull(
      'is_bank_account_setup_completed', instance.isBankAccountSetupCompleted);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
