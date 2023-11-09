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

_$BankResponseImpl _$$BankResponseImplFromJson(Map<String, dynamic> json) =>
    _$BankResponseImpl(
      codeTransaction: json['code_transaction'] as String,
      data: BanksData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BankResponseImplToJson(_$BankResponseImpl instance) =>
    <String, dynamic>{
      'code_transaction': instance.codeTransaction,
      'data': instance.data,
    };

_$BanksDataImpl _$$BanksDataImplFromJson(Map<String, dynamic> json) =>
    _$BanksDataImpl(
      count: json['count'] as int,
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => Bank.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BanksDataImplToJson(_$BanksDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
