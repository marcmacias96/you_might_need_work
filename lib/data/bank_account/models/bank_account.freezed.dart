// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) {
  return _BankAccount.fromJson(json);
}

/// @nodoc
mixin _$BankAccount {
  int get user => throw _privateConstructorUsedError;
  int get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_type')
  String get accountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'default')
  bool get bankDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountCopyWith<BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountCopyWith<$Res> {
  factory $BankAccountCopyWith(
          BankAccount value, $Res Function(BankAccount) then) =
      _$BankAccountCopyWithImpl<$Res, BankAccount>;
  @useResult
  $Res call(
      {int user,
      int bank,
      @JsonKey(name: 'account_number') String accountNumber,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'default') bool bankDefault});
}

/// @nodoc
class _$BankAccountCopyWithImpl<$Res, $Val extends BankAccount>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? bank = null,
    Object? accountNumber = null,
    Object? accountType = null,
    Object? bankDefault = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      bankDefault: null == bankDefault
          ? _value.bankDefault
          : bankDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankAccountImplCopyWith<$Res>
    implements $BankAccountCopyWith<$Res> {
  factory _$$BankAccountImplCopyWith(
          _$BankAccountImpl value, $Res Function(_$BankAccountImpl) then) =
      __$$BankAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int user,
      int bank,
      @JsonKey(name: 'account_number') String accountNumber,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'default') bool bankDefault});
}

/// @nodoc
class __$$BankAccountImplCopyWithImpl<$Res>
    extends _$BankAccountCopyWithImpl<$Res, _$BankAccountImpl>
    implements _$$BankAccountImplCopyWith<$Res> {
  __$$BankAccountImplCopyWithImpl(
      _$BankAccountImpl _value, $Res Function(_$BankAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? bank = null,
    Object? accountNumber = null,
    Object? accountType = null,
    Object? bankDefault = null,
  }) {
    return _then(_$BankAccountImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      bankDefault: null == bankDefault
          ? _value.bankDefault
          : bankDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountImpl implements _BankAccount {
  _$BankAccountImpl(
      {required this.user,
      required this.bank,
      @JsonKey(name: 'account_number') required this.accountNumber,
      @JsonKey(name: 'account_type') required this.accountType,
      @JsonKey(name: 'default') required this.bankDefault});

  factory _$BankAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountImplFromJson(json);

  @override
  final int user;
  @override
  final int bank;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;
  @override
  @JsonKey(name: 'account_type')
  final String accountType;
  @override
  @JsonKey(name: 'default')
  final bool bankDefault;

  @override
  String toString() {
    return 'BankAccount(user: $user, bank: $bank, accountNumber: $accountNumber, accountType: $accountType, bankDefault: $bankDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.bankDefault, bankDefault) ||
                other.bankDefault == bankDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, bank, accountNumber, accountType, bankDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountImplCopyWith<_$BankAccountImpl> get copyWith =>
      __$$BankAccountImplCopyWithImpl<_$BankAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountImplToJson(
      this,
    );
  }
}

abstract class _BankAccount implements BankAccount {
  factory _BankAccount(
          {required final int user,
          required final int bank,
          @JsonKey(name: 'account_number') required final String accountNumber,
          @JsonKey(name: 'account_type') required final String accountType,
          @JsonKey(name: 'default') required final bool bankDefault}) =
      _$BankAccountImpl;

  factory _BankAccount.fromJson(Map<String, dynamic> json) =
      _$BankAccountImpl.fromJson;

  @override
  int get user;
  @override
  int get bank;
  @override
  @JsonKey(name: 'account_number')
  String get accountNumber;
  @override
  @JsonKey(name: 'account_type')
  String get accountType;
  @override
  @JsonKey(name: 'default')
  bool get bankDefault;
  @override
  @JsonKey(ignore: true)
  _$$BankAccountImplCopyWith<_$BankAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
