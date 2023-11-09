// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return _AuthToken.fromJson(json);
}

/// @nodoc
mixin _$AuthToken {
  String get refresh => throw _privateConstructorUsedError;
  String get access => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenCopyWith<AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenCopyWith<$Res> {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) then) =
      _$AuthTokenCopyWithImpl<$Res, AuthToken>;
  @useResult
  $Res call({String refresh, String access});
}

/// @nodoc
class _$AuthTokenCopyWithImpl<$Res, $Val extends AuthToken>
    implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenImplCopyWith<$Res>
    implements $AuthTokenCopyWith<$Res> {
  factory _$$AuthTokenImplCopyWith(
          _$AuthTokenImpl value, $Res Function(_$AuthTokenImpl) then) =
      __$$AuthTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh, String access});
}

/// @nodoc
class __$$AuthTokenImplCopyWithImpl<$Res>
    extends _$AuthTokenCopyWithImpl<$Res, _$AuthTokenImpl>
    implements _$$AuthTokenImplCopyWith<$Res> {
  __$$AuthTokenImplCopyWithImpl(
      _$AuthTokenImpl _value, $Res Function(_$AuthTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = null,
  }) {
    return _then(_$AuthTokenImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenImpl implements _AuthToken {
  _$AuthTokenImpl({required this.refresh, required this.access});

  factory _$AuthTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenImplFromJson(json);

  @override
  final String refresh;
  @override
  final String access;

  @override
  String toString() {
    return 'AuthToken(refresh: $refresh, access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.access, access) || other.access == access));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refresh, access);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      __$$AuthTokenImplCopyWithImpl<_$AuthTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenImplToJson(
      this,
    );
  }
}

abstract class _AuthToken implements AuthToken {
  factory _AuthToken(
      {required final String refresh,
      required final String access}) = _$AuthTokenImpl;

  factory _AuthToken.fromJson(Map<String, dynamic> json) =
      _$AuthTokenImpl.fromJson;

  @override
  String get refresh;
  @override
  String get access;
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthTokenResponse _$AuthTokenResponseFromJson(Map<String, dynamic> json) {
  return _AuthTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenResponse {
  @JsonKey(name: 'code_transaction')
  String get codeTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  AuthToken get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenResponseCopyWith<AuthTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenResponseCopyWith<$Res> {
  factory $AuthTokenResponseCopyWith(
          AuthTokenResponse value, $Res Function(AuthTokenResponse) then) =
      _$AuthTokenResponseCopyWithImpl<$Res, AuthTokenResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') AuthToken data});

  $AuthTokenCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthTokenResponseCopyWithImpl<$Res, $Val extends AuthTokenResponse>
    implements $AuthTokenResponseCopyWith<$Res> {
  _$AuthTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeTransaction = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      codeTransaction: null == codeTransaction
          ? _value.codeTransaction
          : codeTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthToken,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenCopyWith<$Res> get data {
    return $AuthTokenCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthTokenResponseImplCopyWith<$Res>
    implements $AuthTokenResponseCopyWith<$Res> {
  factory _$$AuthTokenResponseImplCopyWith(_$AuthTokenResponseImpl value,
          $Res Function(_$AuthTokenResponseImpl) then) =
      __$$AuthTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') AuthToken data});

  @override
  $AuthTokenCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthTokenResponseImplCopyWithImpl<$Res>
    extends _$AuthTokenResponseCopyWithImpl<$Res, _$AuthTokenResponseImpl>
    implements _$$AuthTokenResponseImplCopyWith<$Res> {
  __$$AuthTokenResponseImplCopyWithImpl(_$AuthTokenResponseImpl _value,
      $Res Function(_$AuthTokenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeTransaction = null,
    Object? data = null,
  }) {
    return _then(_$AuthTokenResponseImpl(
      codeTransaction: null == codeTransaction
          ? _value.codeTransaction
          : codeTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthToken,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenResponseImpl implements _AuthTokenResponse {
  _$AuthTokenResponseImpl(
      {@JsonKey(name: 'code_transaction') required this.codeTransaction,
      @JsonKey(name: 'data') required this.data});

  factory _$AuthTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code_transaction')
  final String codeTransaction;
  @override
  @JsonKey(name: 'data')
  final AuthToken data;

  @override
  String toString() {
    return 'AuthTokenResponse(codeTransaction: $codeTransaction, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenResponseImpl &&
            (identical(other.codeTransaction, codeTransaction) ||
                other.codeTransaction == codeTransaction) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codeTransaction, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenResponseImplCopyWith<_$AuthTokenResponseImpl> get copyWith =>
      __$$AuthTokenResponseImplCopyWithImpl<_$AuthTokenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthTokenResponse implements AuthTokenResponse {
  factory _AuthTokenResponse(
      {@JsonKey(name: 'code_transaction') required final String codeTransaction,
      @JsonKey(name: 'data')
      required final AuthToken data}) = _$AuthTokenResponseImpl;

  factory _AuthTokenResponse.fromJson(Map<String, dynamic> json) =
      _$AuthTokenResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code_transaction')
  String get codeTransaction;
  @override
  @JsonKey(name: 'data')
  AuthToken get data;
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenResponseImplCopyWith<_$AuthTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
