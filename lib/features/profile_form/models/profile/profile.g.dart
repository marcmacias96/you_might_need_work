// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      companyData: json['companyData'] == null
          ? null
          : CompanyData.fromJson(json['companyData'] as Map<String, dynamic>),
      companyDetail: json['companyDetail'] == null
          ? null
          : CompanyDetail.fromJson(
              json['companyDetail'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      identityData: json['identityData'] == null
          ? null
          : IdentityData.fromJson(json['identityData'] as Map<String, dynamic>),
      profileData: json['profileData'] == null
          ? null
          : ProfileData.fromJson(json['profileData'] as Map<String, dynamic>),
      workDayData: json['workDayData'] == null
          ? null
          : WorkDayData.fromJson(json['workDayData'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] == null
          ? null
          : PhoneNumberData.fromJson(
              json['phoneNumber'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'companyData': instance.companyData,
      'companyDetail': instance.companyDetail,
      'address': instance.address,
      'identityData': instance.identityData,
      'profileData': instance.profileData,
      'workDayData': instance.workDayData,
      'paymentMethod': instance.paymentMethod,
      'phoneNumber': instance.phoneNumber,
    };

_$CompanyDataImpl _$$CompanyDataImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDataImpl(
      company: json['company'] as String,
      feedback: json['feedback'] as String,
    );

Map<String, dynamic> _$$CompanyDataImplToJson(_$CompanyDataImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'feedback': instance.feedback,
    };

_$CompanyDetailImpl _$$CompanyDetailImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDetailImpl(
      industry: json['industry'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      occupation: json['occupation'] as String,
      specialization: json['specialization'] as String,
      statingAt: DateTime.parse(json['statingAt'] as String),
      endingAt: DateTime.parse(json['endingAt'] as String),
      paymentForHour: json['paymentForHour'] as String,
      hoursRequired: json['hoursRequired'] as String,
    );

Map<String, dynamic> _$$CompanyDetailImplToJson(_$CompanyDetailImpl instance) =>
    <String, dynamic>{
      'industry': instance.industry,
      'description': instance.description,
      'title': instance.title,
      'occupation': instance.occupation,
      'specialization': instance.specialization,
      'statingAt': instance.statingAt.toIso8601String(),
      'endingAt': instance.endingAt.toIso8601String(),
      'paymentForHour': instance.paymentForHour,
      'hoursRequired': instance.hoursRequired,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      address: json['address'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_$IdentityDataImpl _$$IdentityDataImplFromJson(Map<String, dynamic> json) =>
    _$IdentityDataImpl(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      documentNumber: json['documentNumber'] as String,
      documentType: json['documentType'] as String,
      documentIssueDate: DateTime.parse(json['documentIssueDate'] as String),
    );

Map<String, dynamic> _$$IdentityDataImplToJson(_$IdentityDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'documentNumber': instance.documentNumber,
      'documentType': instance.documentType,
      'documentIssueDate': instance.documentIssueDate.toIso8601String(),
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      levelOfStudy: json['levelOfStudy'] as String,
      occupation: json['occupation'] as String,
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'levelOfStudy': instance.levelOfStudy,
      'occupation': instance.occupation,
    };

_$WorkDayDataImpl _$$WorkDayDataImplFromJson(Map<String, dynamic> json) =>
    _$WorkDayDataImpl(
      capacity: json['capacity'] as String,
      availableDays: (json['availableDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WorkDayDataImplToJson(_$WorkDayDataImpl instance) =>
    <String, dynamic>{
      'capacity': instance.capacity,
      'availableDays': instance.availableDays,
    };

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      bank: json['bank'] as String,
      accountNumber: json['accountNumber'] as String,
      accountType: json['accountType'] as String,
    );

Map<String, dynamic> _$$PaymentMethodImplToJson(_$PaymentMethodImpl instance) =>
    <String, dynamic>{
      'bank': instance.bank,
      'accountNumber': instance.accountNumber,
      'accountType': instance.accountType,
    };

_$PhoneNumberDataImpl _$$PhoneNumberDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PhoneNumberDataImpl(
      phoneNumber:
          PhoneNumber.fromJson(json['phoneNumber'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhoneNumberDataImplToJson(
        _$PhoneNumberDataImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
    };
