// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthTokenImpl _$$AuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenImpl(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
    );

Map<String, dynamic> _$$AuthTokenImplToJson(_$AuthTokenImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };

_$AuthTokenResponseImpl _$$AuthTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthTokenResponseImpl(
      codeTransaction: json['code_transaction'] as String,
      data: AuthToken.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthTokenResponseImplToJson(
        _$AuthTokenResponseImpl instance) =>
    <String, dynamic>{
      'code_transaction': instance.codeTransaction,
      'data': instance.data,
    };
