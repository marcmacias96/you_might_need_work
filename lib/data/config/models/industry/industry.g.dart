// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndustryImpl _$$IndustryImplFromJson(Map<String, dynamic> json) =>
    _$IndustryImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$IndustryImplToJson(_$IndustryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$IndustriesResponseImpl _$$IndustriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustriesResponseImpl(
      codeTransaction: json['code_transaction'] as String,
      data: IndustriesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IndustriesResponseImplToJson(
        _$IndustriesResponseImpl instance) =>
    <String, dynamic>{
      'code_transaction': instance.codeTransaction,
      'data': instance.data,
    };

_$IndustriesDataImpl _$$IndustriesDataImplFromJson(Map<String, dynamic> json) =>
    _$IndustriesDataImpl(
      count: json['count'] as int,
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => IndustriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndustriesDataImplToJson(
        _$IndustriesDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
