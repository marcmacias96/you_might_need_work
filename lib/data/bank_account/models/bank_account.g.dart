// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountImpl _$$BankAccountImplFromJson(Map<String, dynamic> json) =>
    _$BankAccountImpl(
      user: json['user'] as int,
      bank: json['bank'] as int,
      accountNumber: json['account_number'] as String,
      accountType: json['account_type'] as String,
      bankDefault: json['default'] as bool,
    );

Map<String, dynamic> _$$BankAccountImplToJson(_$BankAccountImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'bank': instance.bank,
      'account_number': instance.accountNumber,
      'account_type': instance.accountType,
      'default': instance.bankDefault,
    };
