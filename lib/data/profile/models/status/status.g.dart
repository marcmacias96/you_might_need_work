// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      display: json['display'] as String,
      value:
          const OnboardingStatusConverter().fromJson(json['value'] as String),
      requireAction: json['require_action'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'display': instance.display,
      'value': const OnboardingStatusConverter().toJson(instance.value),
      'require_action': instance.requireAction,
      'message': instance.message,
    };
