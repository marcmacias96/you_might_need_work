// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'bic_code')
  String get bicCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call(
      {int id,
      String name,
      String country,
      @JsonKey(name: 'bic_code') String bicCode});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? bicCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      bicCode: null == bicCode
          ? _value.bicCode
          : bicCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankImplCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$BankImplCopyWith(
          _$BankImpl value, $Res Function(_$BankImpl) then) =
      __$$BankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String country,
      @JsonKey(name: 'bic_code') String bicCode});
}

/// @nodoc
class __$$BankImplCopyWithImpl<$Res>
    extends _$BankCopyWithImpl<$Res, _$BankImpl>
    implements _$$BankImplCopyWith<$Res> {
  __$$BankImplCopyWithImpl(_$BankImpl _value, $Res Function(_$BankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? bicCode = null,
  }) {
    return _then(_$BankImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      bicCode: null == bicCode
          ? _value.bicCode
          : bicCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankImpl implements _Bank {
  _$BankImpl(
      {required this.id,
      required this.name,
      required this.country,
      @JsonKey(name: 'bic_code') required this.bicCode});

  factory _$BankImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  @JsonKey(name: 'bic_code')
  final String bicCode;

  @override
  String toString() {
    return 'Bank(id: $id, name: $name, country: $country, bicCode: $bicCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.bicCode, bicCode) || other.bicCode == bicCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country, bicCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      __$$BankImplCopyWithImpl<_$BankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankImplToJson(
      this,
    );
  }
}

abstract class _Bank implements Bank {
  factory _Bank(
      {required final int id,
      required final String name,
      required final String country,
      @JsonKey(name: 'bic_code') required final String bicCode}) = _$BankImpl;

  factory _Bank.fromJson(Map<String, dynamic> json) = _$BankImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  @JsonKey(name: 'bic_code')
  String get bicCode;
  @override
  @JsonKey(ignore: true)
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankAccountResponse _$BankAccountResponseFromJson(Map<String, dynamic> json) {
  return _BankAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$BankAccountResponse {
  @JsonKey(name: 'code_transaction')
  String get codeTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  BankAccountsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountResponseCopyWith<BankAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountResponseCopyWith<$Res> {
  factory $BankAccountResponseCopyWith(
          BankAccountResponse value, $Res Function(BankAccountResponse) then) =
      _$BankAccountResponseCopyWithImpl<$Res, BankAccountResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') BankAccountsData data});

  $BankAccountsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BankAccountResponseCopyWithImpl<$Res, $Val extends BankAccountResponse>
    implements $BankAccountResponseCopyWith<$Res> {
  _$BankAccountResponseCopyWithImpl(this._value, this._then);

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
              as BankAccountsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankAccountsDataCopyWith<$Res> get data {
    return $BankAccountsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BankAccountResponseImplCopyWith<$Res>
    implements $BankAccountResponseCopyWith<$Res> {
  factory _$$BankAccountResponseImplCopyWith(_$BankAccountResponseImpl value,
          $Res Function(_$BankAccountResponseImpl) then) =
      __$$BankAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') BankAccountsData data});

  @override
  $BankAccountsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BankAccountResponseImplCopyWithImpl<$Res>
    extends _$BankAccountResponseCopyWithImpl<$Res, _$BankAccountResponseImpl>
    implements _$$BankAccountResponseImplCopyWith<$Res> {
  __$$BankAccountResponseImplCopyWithImpl(_$BankAccountResponseImpl _value,
      $Res Function(_$BankAccountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeTransaction = null,
    Object? data = null,
  }) {
    return _then(_$BankAccountResponseImpl(
      codeTransaction: null == codeTransaction
          ? _value.codeTransaction
          : codeTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BankAccountsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountResponseImpl implements _BankAccountResponse {
  _$BankAccountResponseImpl(
      {@JsonKey(name: 'code_transaction') required this.codeTransaction,
      @JsonKey(name: 'data') required this.data});

  factory _$BankAccountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code_transaction')
  final String codeTransaction;
  @override
  @JsonKey(name: 'data')
  final BankAccountsData data;

  @override
  String toString() {
    return 'BankAccountResponse(codeTransaction: $codeTransaction, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountResponseImpl &&
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
  _$$BankAccountResponseImplCopyWith<_$BankAccountResponseImpl> get copyWith =>
      __$$BankAccountResponseImplCopyWithImpl<_$BankAccountResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountResponseImplToJson(
      this,
    );
  }
}

abstract class _BankAccountResponse implements BankAccountResponse {
  factory _BankAccountResponse(
      {@JsonKey(name: 'code_transaction') required final String codeTransaction,
      @JsonKey(name: 'data')
      required final BankAccountsData data}) = _$BankAccountResponseImpl;

  factory _BankAccountResponse.fromJson(Map<String, dynamic> json) =
      _$BankAccountResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code_transaction')
  String get codeTransaction;
  @override
  @JsonKey(name: 'data')
  BankAccountsData get data;
  @override
  @JsonKey(ignore: true)
  _$$BankAccountResponseImplCopyWith<_$BankAccountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankAccountsData _$BankAccountsDataFromJson(Map<String, dynamic> json) {
  return _BankAccountsData.fromJson(json);
}

/// @nodoc
mixin _$BankAccountsData {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<BankAccountsData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountsDataCopyWith<BankAccountsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountsDataCopyWith<$Res> {
  factory $BankAccountsDataCopyWith(
          BankAccountsData value, $Res Function(BankAccountsData) then) =
      _$BankAccountsDataCopyWithImpl<$Res, BankAccountsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') dynamic next,
      @JsonKey(name: 'previous') dynamic previous,
      @JsonKey(name: 'results') List<BankAccountsData> results});
}

/// @nodoc
class _$BankAccountsDataCopyWithImpl<$Res, $Val extends BankAccountsData>
    implements $BankAccountsDataCopyWith<$Res> {
  _$BankAccountsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<BankAccountsData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankAccountsDataImplCopyWith<$Res>
    implements $BankAccountsDataCopyWith<$Res> {
  factory _$$BankAccountsDataImplCopyWith(_$BankAccountsDataImpl value,
          $Res Function(_$BankAccountsDataImpl) then) =
      __$$BankAccountsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') dynamic next,
      @JsonKey(name: 'previous') dynamic previous,
      @JsonKey(name: 'results') List<BankAccountsData> results});
}

/// @nodoc
class __$$BankAccountsDataImplCopyWithImpl<$Res>
    extends _$BankAccountsDataCopyWithImpl<$Res, _$BankAccountsDataImpl>
    implements _$$BankAccountsDataImplCopyWith<$Res> {
  __$$BankAccountsDataImplCopyWithImpl(_$BankAccountsDataImpl _value,
      $Res Function(_$BankAccountsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$BankAccountsDataImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<BankAccountsData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountsDataImpl implements _BankAccountsData {
  const _$BankAccountsDataImpl(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'next') required this.next,
      @JsonKey(name: 'previous') required this.previous,
      @JsonKey(name: 'results') required final List<BankAccountsData> results})
      : _results = results;

  factory _$BankAccountsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountsDataImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final dynamic next;
  @override
  @JsonKey(name: 'previous')
  final dynamic previous;
  final List<BankAccountsData> _results;
  @override
  @JsonKey(name: 'results')
  List<BankAccountsData> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'BankAccountsData(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountsDataImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountsDataImplCopyWith<_$BankAccountsDataImpl> get copyWith =>
      __$$BankAccountsDataImplCopyWithImpl<_$BankAccountsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountsDataImplToJson(
      this,
    );
  }
}

abstract class _BankAccountsData implements BankAccountsData {
  const factory _BankAccountsData(
      {@JsonKey(name: 'count') required final int count,
      @JsonKey(name: 'next') required final dynamic next,
      @JsonKey(name: 'previous') required final dynamic previous,
      @JsonKey(name: 'results')
      required final List<BankAccountsData> results}) = _$BankAccountsDataImpl;

  factory _BankAccountsData.fromJson(Map<String, dynamic> json) =
      _$BankAccountsDataImpl.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'next')
  dynamic get next;
  @override
  @JsonKey(name: 'previous')
  dynamic get previous;
  @override
  @JsonKey(name: 'results')
  List<BankAccountsData> get results;
  @override
  @JsonKey(ignore: true)
  _$$BankAccountsDataImplCopyWith<_$BankAccountsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
