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

_$BankAccountResponseImpl _$$BankAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountResponseImpl(
      codeTransaction: json['code_transaction'] as String,
      data: BankAccountsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BankAccountResponseImplToJson(
        _$BankAccountResponseImpl instance) =>
    <String, dynamic>{
      'code_transaction': instance.codeTransaction,
      'data': instance.data,
    };

_$BankAccountsDataImpl _$$BankAccountsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountsDataImpl(
      count: json['count'] as int,
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => BankAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BankAccountsDataImplToJson(
        _$BankAccountsDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
