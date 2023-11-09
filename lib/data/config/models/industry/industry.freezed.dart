// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'industry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Industry _$IndustryFromJson(Map<String, dynamic> json) {
  return _Industry.fromJson(json);
}

/// @nodoc
mixin _$Industry {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustryCopyWith<Industry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryCopyWith<$Res> {
  factory $IndustryCopyWith(Industry value, $Res Function(Industry) then) =
      _$IndustryCopyWithImpl<$Res, Industry>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$IndustryCopyWithImpl<$Res, $Val extends Industry>
    implements $IndustryCopyWith<$Res> {
  _$IndustryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustryImplCopyWith<$Res>
    implements $IndustryCopyWith<$Res> {
  factory _$$IndustryImplCopyWith(
          _$IndustryImpl value, $Res Function(_$IndustryImpl) then) =
      __$$IndustryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$IndustryImplCopyWithImpl<$Res>
    extends _$IndustryCopyWithImpl<$Res, _$IndustryImpl>
    implements _$$IndustryImplCopyWith<$Res> {
  __$$IndustryImplCopyWithImpl(
      _$IndustryImpl _value, $Res Function(_$IndustryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$IndustryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustryImpl implements _Industry {
  _$IndustryImpl({required this.name});

  factory _$IndustryImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustryImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Industry(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustryImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndustryImplCopyWith<_$IndustryImpl> get copyWith =>
      __$$IndustryImplCopyWithImpl<_$IndustryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustryImplToJson(
      this,
    );
  }
}

abstract class _Industry implements Industry {
  factory _Industry({required final String name}) = _$IndustryImpl;

  factory _Industry.fromJson(Map<String, dynamic> json) =
      _$IndustryImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$IndustryImplCopyWith<_$IndustryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustriesResponse _$IndustriesResponseFromJson(Map<String, dynamic> json) {
  return _IndustriesResponse.fromJson(json);
}

/// @nodoc
mixin _$IndustriesResponse {
  @JsonKey(name: 'code_transaction')
  String get codeTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  IndustriesData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustriesResponseCopyWith<IndustriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustriesResponseCopyWith<$Res> {
  factory $IndustriesResponseCopyWith(
          IndustriesResponse value, $Res Function(IndustriesResponse) then) =
      _$IndustriesResponseCopyWithImpl<$Res, IndustriesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') IndustriesData data});

  $IndustriesDataCopyWith<$Res> get data;
}

/// @nodoc
class _$IndustriesResponseCopyWithImpl<$Res, $Val extends IndustriesResponse>
    implements $IndustriesResponseCopyWith<$Res> {
  _$IndustriesResponseCopyWithImpl(this._value, this._then);

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
              as IndustriesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndustriesDataCopyWith<$Res> get data {
    return $IndustriesDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndustriesResponseImplCopyWith<$Res>
    implements $IndustriesResponseCopyWith<$Res> {
  factory _$$IndustriesResponseImplCopyWith(_$IndustriesResponseImpl value,
          $Res Function(_$IndustriesResponseImpl) then) =
      __$$IndustriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code_transaction') String codeTransaction,
      @JsonKey(name: 'data') IndustriesData data});

  @override
  $IndustriesDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$IndustriesResponseImplCopyWithImpl<$Res>
    extends _$IndustriesResponseCopyWithImpl<$Res, _$IndustriesResponseImpl>
    implements _$$IndustriesResponseImplCopyWith<$Res> {
  __$$IndustriesResponseImplCopyWithImpl(_$IndustriesResponseImpl _value,
      $Res Function(_$IndustriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeTransaction = null,
    Object? data = null,
  }) {
    return _then(_$IndustriesResponseImpl(
      codeTransaction: null == codeTransaction
          ? _value.codeTransaction
          : codeTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IndustriesData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustriesResponseImpl implements _IndustriesResponse {
  _$IndustriesResponseImpl(
      {@JsonKey(name: 'code_transaction') required this.codeTransaction,
      @JsonKey(name: 'data') required this.data});

  factory _$IndustriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustriesResponseImplFromJson(json);

  @override
  @JsonKey(name: 'code_transaction')
  final String codeTransaction;
  @override
  @JsonKey(name: 'data')
  final IndustriesData data;

  @override
  String toString() {
    return 'IndustriesResponse(codeTransaction: $codeTransaction, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustriesResponseImpl &&
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
  _$$IndustriesResponseImplCopyWith<_$IndustriesResponseImpl> get copyWith =>
      __$$IndustriesResponseImplCopyWithImpl<_$IndustriesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustriesResponseImplToJson(
      this,
    );
  }
}

abstract class _IndustriesResponse implements IndustriesResponse {
  factory _IndustriesResponse(
      {@JsonKey(name: 'code_transaction') required final String codeTransaction,
      @JsonKey(name: 'data')
      required final IndustriesData data}) = _$IndustriesResponseImpl;

  factory _IndustriesResponse.fromJson(Map<String, dynamic> json) =
      _$IndustriesResponseImpl.fromJson;

  @override
  @JsonKey(name: 'code_transaction')
  String get codeTransaction;
  @override
  @JsonKey(name: 'data')
  IndustriesData get data;
  @override
  @JsonKey(ignore: true)
  _$$IndustriesResponseImplCopyWith<_$IndustriesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustriesData _$IndustriesDataFromJson(Map<String, dynamic> json) {
  return _IndustriesData.fromJson(json);
}

/// @nodoc
mixin _$IndustriesData {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<IndustriesData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustriesDataCopyWith<IndustriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustriesDataCopyWith<$Res> {
  factory $IndustriesDataCopyWith(
          IndustriesData value, $Res Function(IndustriesData) then) =
      _$IndustriesDataCopyWithImpl<$Res, IndustriesData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') dynamic next,
      @JsonKey(name: 'previous') dynamic previous,
      @JsonKey(name: 'results') List<IndustriesData> results});
}

/// @nodoc
class _$IndustriesDataCopyWithImpl<$Res, $Val extends IndustriesData>
    implements $IndustriesDataCopyWith<$Res> {
  _$IndustriesDataCopyWithImpl(this._value, this._then);

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
              as List<IndustriesData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndustriesDataImplCopyWith<$Res>
    implements $IndustriesDataCopyWith<$Res> {
  factory _$$IndustriesDataImplCopyWith(_$IndustriesDataImpl value,
          $Res Function(_$IndustriesDataImpl) then) =
      __$$IndustriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'next') dynamic next,
      @JsonKey(name: 'previous') dynamic previous,
      @JsonKey(name: 'results') List<IndustriesData> results});
}

/// @nodoc
class __$$IndustriesDataImplCopyWithImpl<$Res>
    extends _$IndustriesDataCopyWithImpl<$Res, _$IndustriesDataImpl>
    implements _$$IndustriesDataImplCopyWith<$Res> {
  __$$IndustriesDataImplCopyWithImpl(
      _$IndustriesDataImpl _value, $Res Function(_$IndustriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$IndustriesDataImpl(
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
              as List<IndustriesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndustriesDataImpl implements _IndustriesData {
  const _$IndustriesDataImpl(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'next') required this.next,
      @JsonKey(name: 'previous') required this.previous,
      @JsonKey(name: 'results') required final List<IndustriesData> results})
      : _results = results;

  factory _$IndustriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndustriesDataImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final dynamic next;
  @override
  @JsonKey(name: 'previous')
  final dynamic previous;
  final List<IndustriesData> _results;
  @override
  @JsonKey(name: 'results')
  List<IndustriesData> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'IndustriesData(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndustriesDataImpl &&
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
  _$$IndustriesDataImplCopyWith<_$IndustriesDataImpl> get copyWith =>
      __$$IndustriesDataImplCopyWithImpl<_$IndustriesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndustriesDataImplToJson(
      this,
    );
  }
}

abstract class _IndustriesData implements IndustriesData {
  const factory _IndustriesData(
      {@JsonKey(name: 'count') required final int count,
      @JsonKey(name: 'next') required final dynamic next,
      @JsonKey(name: 'previous') required final dynamic previous,
      @JsonKey(name: 'results')
      required final List<IndustriesData> results}) = _$IndustriesDataImpl;

  factory _IndustriesData.fromJson(Map<String, dynamic> json) =
      _$IndustriesDataImpl.fromJson;

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
  List<IndustriesData> get results;
  @override
  @JsonKey(ignore: true)
  _$$IndustriesDataImplCopyWith<_$IndustriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
