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

BankResponse _$BankResponseFromJson(Map<String, dynamic> json) {
  return _BankResponse.fromJson(json);
}

/// @nodoc
mixin _$BankResponse {
  @JsonKey(name: 'code_transaction')
  String get codeTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  BanksData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankResponseCopyWith<BankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankResponseCopyWith<$Res> {
  factory $BankResponseCopyWith(
          BankResponse value, $Res Function(BankResponse) then) =
      _$BankResponseCopyWithImpl<$Res, BankResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') BanksData data});

  $BanksDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BankResponseCopyWithImpl<$Res, $Val extends BankResponse>
    implements $BankResponseCopyWith<$Res> {
  _$BankResponseCopyWithImpl(this._value, this._then);

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
              as BanksData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BanksDataCopyWith<$Res> get data {
    return $BanksDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BankResponseImplCopyWith<$Res>
    implements $BankResponseCopyWith<$Res> {
  factory _$$BankResponseImplCopyWith(
          _$BankResponseImpl value, $Res Function(_$BankResponseImpl) then) =
      __$$BankResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') BanksData data});

  @override
  $BanksDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BankResponseImplCopyWithImpl<$Res>
    extends _$BankResponseCopyWithImpl<$Res, _$BankResponseImpl>
    implements _$$BankResponseImplCopyWith<$Res> {
  __$$BankResponseImplCopyWithImpl(
      _$BankResponseImpl _value, $Res Function(_$BankResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeTransaction = null,
    Object? data = null,
  }) {
    return _then(_$BankResponseImpl(
      codeTransaction: null == codeTransaction
          ? _value.codeTransaction
          : codeTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BanksData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankResponseImpl implements _BankResponse {
  _$BankResponseImpl(
      {@JsonKey(name: 'code_transaction') required this.codeTransaction,
      @JsonKey(name: 'data') required this.data});

  factory _$BankResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code_transaction')
  final String codeTransaction;
  @override
  @JsonKey(name: 'data')
  final BanksData data;

  @override
  String toString() {
    return 'BankResponse(codeTransaction: $codeTransaction, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankResponseImpl &&
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
  _$$BankResponseImplCopyWith<_$BankResponseImpl> get copyWith =>
      __$$BankResponseImplCopyWithImpl<_$BankResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankResponseImplToJson(
      this,
    );
  }
}

abstract class _BankResponse implements BankResponse {
  factory _BankResponse(
      {@JsonKey(name: 'code_transaction') required final String codeTransaction,
      @JsonKey(name: 'data')
      required final BanksData data}) = _$BankResponseImpl;

  factory _BankResponse.fromJson(Map<String, dynamic> json) =
      _$BankResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code_transaction')
  String get codeTransaction;
  @override
  @JsonKey(name: 'data')
  BanksData get data;
  @override
  @JsonKey(ignore: true)
  _$$BankResponseImplCopyWith<_$BankResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BanksData _$BanksDataFromJson(Map<String, dynamic> json) {
  return _BanksData.fromJson(json);
}

/// @nodoc
mixin _$BanksData {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Bank> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BanksDataCopyWith<BanksData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanksDataCopyWith<$Res> {
  factory $BanksDataCopyWith(BanksData value, $Res Function(BanksData) then) =
      _$BanksDataCopyWithImpl<$Res, BanksData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') dynamic next,
      @JsonKey(name: 'previous') dynamic previous,
      @JsonKey(name: 'results') List<Bank> results});
}

/// @nodoc
class _$BanksDataCopyWithImpl<$Res, $Val extends BanksData>
    implements $BanksDataCopyWith<$Res> {
  _$BanksDataCopyWithImpl(this._value, this._then);

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
              as List<Bank>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BanksDataImplCopyWith<$Res>
    implements $BanksDataCopyWith<$Res> {
  factory _$$BanksDataImplCopyWith(
          _$BanksDataImpl value, $Res Function(_$BanksDataImpl) then) =
      __$$BanksDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') dynamic next,
      @JsonKey(name: 'previous') dynamic previous,
      @JsonKey(name: 'results') List<Bank> results});
}

/// @nodoc
class __$$BanksDataImplCopyWithImpl<$Res>
    extends _$BanksDataCopyWithImpl<$Res, _$BanksDataImpl>
    implements _$$BanksDataImplCopyWith<$Res> {
  __$$BanksDataImplCopyWithImpl(
      _$BanksDataImpl _value, $Res Function(_$BanksDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$BanksDataImpl(
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
              as List<Bank>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BanksDataImpl implements _BanksData {
  const _$BanksDataImpl(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'next') required this.next,
      @JsonKey(name: 'previous') required this.previous,
      @JsonKey(name: 'results') required final List<Bank> results})
      : _results = results;

  factory _$BanksDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanksDataImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final dynamic next;
  @override
  @JsonKey(name: 'previous')
  final dynamic previous;
  final List<Bank> _results;
  @override
  @JsonKey(name: 'results')
  List<Bank> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'BanksData(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanksDataImpl &&
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
  _$$BanksDataImplCopyWith<_$BanksDataImpl> get copyWith =>
      __$$BanksDataImplCopyWithImpl<_$BanksDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BanksDataImplToJson(
      this,
    );
  }
}

abstract class _BanksData implements BanksData {
  const factory _BanksData(
          {@JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'next') required final dynamic next,
          @JsonKey(name: 'previous') required final dynamic previous,
          @JsonKey(name: 'results') required final List<Bank> results}) =
      _$BanksDataImpl;

  factory _BanksData.fromJson(Map<String, dynamic> json) =
      _$BanksDataImpl.fromJson;

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
  List<Bank> get results;
  @override
  @JsonKey(ignore: true)
  _$$BanksDataImplCopyWith<_$BanksDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
