// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankImpl _$$BankImplFromJson(Map<String, dynamic> json) => _$BankImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      bicCode: json['bic_code'] as String,
    );

Map<String, dynamic> _$$BankImplToJson(_$BankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'bic_code': instance.bicCode,
    };
