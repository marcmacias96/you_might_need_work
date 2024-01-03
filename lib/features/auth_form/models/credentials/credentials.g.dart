// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialsImpl _$$CredentialsImplFromJson(Map<String, dynamic> json) =>
    _$CredentialsImpl(
      email: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$CredentialsImplToJson(_$CredentialsImpl instance) =>
    <String, dynamic>{
      'username': instance.email,
      'password': instance.password,
    };
