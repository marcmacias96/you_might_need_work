// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFormState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  ProfileUiForm? get profileForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res, ProfileFormState>;
  @useResult
  $Res call({bool isSubmitting, ProfileUiForm? profileForm});
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res, $Val extends ProfileFormState>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? profileForm = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      profileForm: freezed == profileForm
          ? _value.profileForm
          : profileForm // ignore: cast_nullable_to_non_nullable
              as ProfileUiForm?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileFormStateImplCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$$ProfileFormStateImplCopyWith(_$ProfileFormStateImpl value,
          $Res Function(_$ProfileFormStateImpl) then) =
      __$$ProfileFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSubmitting, ProfileUiForm? profileForm});
}

/// @nodoc
class __$$ProfileFormStateImplCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res, _$ProfileFormStateImpl>
    implements _$$ProfileFormStateImplCopyWith<$Res> {
  __$$ProfileFormStateImplCopyWithImpl(_$ProfileFormStateImpl _value,
      $Res Function(_$ProfileFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? profileForm = freezed,
  }) {
    return _then(_$ProfileFormStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      profileForm: freezed == profileForm
          ? _value.profileForm
          : profileForm // ignore: cast_nullable_to_non_nullable
              as ProfileUiForm?,
    ));
  }
}

/// @nodoc

class _$ProfileFormStateImpl implements _ProfileFormState {
  const _$ProfileFormStateImpl({required this.isSubmitting, this.profileForm});

  @override
  final bool isSubmitting;
  @override
  final ProfileUiForm? profileForm;

  @override
  String toString() {
    return 'ProfileFormState(isSubmitting: $isSubmitting, profileForm: $profileForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFormStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.profileForm, profileForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting,
      const DeepCollectionEquality().hash(profileForm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFormStateImplCopyWith<_$ProfileFormStateImpl> get copyWith =>
      __$$ProfileFormStateImplCopyWithImpl<_$ProfileFormStateImpl>(
          this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {required final bool isSubmitting,
      final ProfileUiForm? profileForm}) = _$ProfileFormStateImpl;

  @override
  bool get isSubmitting;
  @override
  ProfileUiForm? get profileForm;
  @override
  @JsonKey(ignore: true)
  _$$ProfileFormStateImplCopyWith<_$ProfileFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
