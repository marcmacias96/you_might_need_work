// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingImpl _$$OnboardingImplFromJson(Map<String, dynamic> json) =>
    _$OnboardingImpl(
      step: const OnboardingStepConverter().fromJson(json['step'] as String),
      stepNumber: json['step_number'] as int,
      totalSteps: json['total_steps'] as int,
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnboardingImplToJson(_$OnboardingImpl instance) =>
    <String, dynamic>{
      'step': const OnboardingStepConverter().toJson(instance.step),
      'step_number': instance.stepNumber,
      'total_steps': instance.totalSteps,
      'status': instance.status,
    };
