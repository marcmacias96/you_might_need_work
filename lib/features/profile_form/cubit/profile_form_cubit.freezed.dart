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
  List<Bank> get banks => throw _privateConstructorUsedError;
  List<Industry> get industries => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  CoreFailure? get failure => throw _privateConstructorUsedError;
  ProfileUiForm? get profileForm => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  Either<CoreFailure, Unit>? get failureOrUpdateProfile =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {List<Bank> banks,
      List<Industry> industries,
      bool isSubmitting,
      bool isLoading,
      CoreFailure? failure,
      ProfileUiForm? profileForm,
      Profile? profile,
      Either<CoreFailure, Unit>? failureOrUpdateProfile});

  $CoreFailureCopyWith<$Res>? get failure;
  $ProfileCopyWith<$Res>? get profile;
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
    Object? banks = null,
    Object? industries = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? profileForm = freezed,
    Object? profile = freezed,
    Object? failureOrUpdateProfile = freezed,
  }) {
    return _then(_value.copyWith(
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<Bank>,
      industries: null == industries
          ? _value.industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<Industry>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoreFailure?,
      profileForm: freezed == profileForm
          ? _value.profileForm
          : profileForm // ignore: cast_nullable_to_non_nullable
              as ProfileUiForm?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      failureOrUpdateProfile: freezed == failureOrUpdateProfile
          ? _value.failureOrUpdateProfile
          : failureOrUpdateProfile // ignore: cast_nullable_to_non_nullable
              as Either<CoreFailure, Unit>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoreFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $CoreFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
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
  $Res call(
      {List<Bank> banks,
      List<Industry> industries,
      bool isSubmitting,
      bool isLoading,
      CoreFailure? failure,
      ProfileUiForm? profileForm,
      Profile? profile,
      Either<CoreFailure, Unit>? failureOrUpdateProfile});

  @override
  $CoreFailureCopyWith<$Res>? get failure;
  @override
  $ProfileCopyWith<$Res>? get profile;
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
    Object? banks = null,
    Object? industries = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? profileForm = freezed,
    Object? profile = freezed,
    Object? failureOrUpdateProfile = freezed,
  }) {
    return _then(_$ProfileFormStateImpl(
      banks: null == banks
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<Bank>,
      industries: null == industries
          ? _value._industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<Industry>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoreFailure?,
      profileForm: freezed == profileForm
          ? _value.profileForm
          : profileForm // ignore: cast_nullable_to_non_nullable
              as ProfileUiForm?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      failureOrUpdateProfile: freezed == failureOrUpdateProfile
          ? _value.failureOrUpdateProfile
          : failureOrUpdateProfile // ignore: cast_nullable_to_non_nullable
              as Either<CoreFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$ProfileFormStateImpl implements _ProfileFormState {
  const _$ProfileFormStateImpl(
      {required final List<Bank> banks,
      required final List<Industry> industries,
      required this.isSubmitting,
      required this.isLoading,
      this.failure,
      this.profileForm,
      this.profile,
      this.failureOrUpdateProfile})
      : _banks = banks,
        _industries = industries;

  final List<Bank> _banks;
  @override
  List<Bank> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  final List<Industry> _industries;
  @override
  List<Industry> get industries {
    if (_industries is EqualUnmodifiableListView) return _industries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_industries);
  }

  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final CoreFailure? failure;
  @override
  final ProfileUiForm? profileForm;
  @override
  final Profile? profile;
  @override
  final Either<CoreFailure, Unit>? failureOrUpdateProfile;

  @override
  String toString() {
    return 'ProfileFormState(banks: $banks, industries: $industries, isSubmitting: $isSubmitting, isLoading: $isLoading, failure: $failure, profileForm: $profileForm, profile: $profile, failureOrUpdateProfile: $failureOrUpdateProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFormStateImpl &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            const DeepCollectionEquality()
                .equals(other._industries, _industries) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other.profileForm, profileForm) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.failureOrUpdateProfile, failureOrUpdateProfile) ||
                other.failureOrUpdateProfile == failureOrUpdateProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banks),
      const DeepCollectionEquality().hash(_industries),
      isSubmitting,
      isLoading,
      failure,
      const DeepCollectionEquality().hash(profileForm),
      profile,
      failureOrUpdateProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFormStateImplCopyWith<_$ProfileFormStateImpl> get copyWith =>
      __$$ProfileFormStateImplCopyWithImpl<_$ProfileFormStateImpl>(
          this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
          {required final List<Bank> banks,
          required final List<Industry> industries,
          required final bool isSubmitting,
          required final bool isLoading,
          final CoreFailure? failure,
          final ProfileUiForm? profileForm,
          final Profile? profile,
          final Either<CoreFailure, Unit>? failureOrUpdateProfile}) =
      _$ProfileFormStateImpl;

  @override
  List<Bank> get banks;
  @override
  List<Industry> get industries;
  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  CoreFailure? get failure;
  @override
  ProfileUiForm? get profileForm;
  @override
  Profile? get profile;
  @override
  Either<CoreFailure, Unit>? get failureOrUpdateProfile;
  @override
  @JsonKey(ignore: true)
  _$$ProfileFormStateImplCopyWith<_$ProfileFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
