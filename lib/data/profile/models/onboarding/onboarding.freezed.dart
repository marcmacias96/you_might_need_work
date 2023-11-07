// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Onboarding _$OnboardingFromJson(Map<String, dynamic> json) {
  return _Onboarding.fromJson(json);
}

/// @nodoc
mixin _$Onboarding {
  @OnboardingStepConverter()
  OnboardingStep get step => throw _privateConstructorUsedError;
  @JsonKey(name: 'step_number')
  int get stepNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_steps')
  int get totalSteps => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingCopyWith<Onboarding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingCopyWith<$Res> {
  factory $OnboardingCopyWith(
          Onboarding value, $Res Function(Onboarding) then) =
      _$OnboardingCopyWithImpl<$Res, Onboarding>;
  @useResult
  $Res call(
      {@OnboardingStepConverter() OnboardingStep step,
      @JsonKey(name: 'step_number') int stepNumber,
      @JsonKey(name: 'total_steps') int totalSteps,
      Status status});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$OnboardingCopyWithImpl<$Res, $Val extends Onboarding>
    implements $OnboardingCopyWith<$Res> {
  _$OnboardingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? stepNumber = null,
    Object? totalSteps = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as OnboardingStep,
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnboardingImplCopyWith<$Res>
    implements $OnboardingCopyWith<$Res> {
  factory _$$OnboardingImplCopyWith(
          _$OnboardingImpl value, $Res Function(_$OnboardingImpl) then) =
      __$$OnboardingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@OnboardingStepConverter() OnboardingStep step,
      @JsonKey(name: 'step_number') int stepNumber,
      @JsonKey(name: 'total_steps') int totalSteps,
      Status status});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$OnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingCopyWithImpl<$Res, _$OnboardingImpl>
    implements _$$OnboardingImplCopyWith<$Res> {
  __$$OnboardingImplCopyWithImpl(
      _$OnboardingImpl _value, $Res Function(_$OnboardingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? stepNumber = null,
    Object? totalSteps = null,
    Object? status = null,
  }) {
    return _then(_$OnboardingImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as OnboardingStep,
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingImpl implements _Onboarding {
  _$OnboardingImpl(
      {@OnboardingStepConverter() required this.step,
      @JsonKey(name: 'step_number') required this.stepNumber,
      @JsonKey(name: 'total_steps') required this.totalSteps,
      required this.status});

  factory _$OnboardingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingImplFromJson(json);

  @override
  @OnboardingStepConverter()
  final OnboardingStep step;
  @override
  @JsonKey(name: 'step_number')
  final int stepNumber;
  @override
  @JsonKey(name: 'total_steps')
  final int totalSteps;
  @override
  final Status status;

  @override
  String toString() {
    return 'Onboarding(step: $step, stepNumber: $stepNumber, totalSteps: $totalSteps, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.stepNumber, stepNumber) ||
                other.stepNumber == stepNumber) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, step, stepNumber, totalSteps, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingImplCopyWith<_$OnboardingImpl> get copyWith =>
      __$$OnboardingImplCopyWithImpl<_$OnboardingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingImplToJson(
      this,
    );
  }
}

abstract class _Onboarding implements Onboarding {
  factory _Onboarding(
      {@OnboardingStepConverter() required final OnboardingStep step,
      @JsonKey(name: 'step_number') required final int stepNumber,
      @JsonKey(name: 'total_steps') required final int totalSteps,
      required final Status status}) = _$OnboardingImpl;

  factory _Onboarding.fromJson(Map<String, dynamic> json) =
      _$OnboardingImpl.fromJson;

  @override
  @OnboardingStepConverter()
  OnboardingStep get step;
  @override
  @JsonKey(name: 'step_number')
  int get stepNumber;
  @override
  @JsonKey(name: 'total_steps')
  int get totalSteps;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingImplCopyWith<_$OnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
