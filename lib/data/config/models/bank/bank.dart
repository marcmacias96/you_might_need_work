import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';
part 'bank.g.dart';

@freezed
class Bank with _$Bank {
  factory Bank({
    required int id,
    required String name,
    required String country,
    @JsonKey(name: 'bic_code') required String bicCode,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}

@freezed
class BankAccountResponse with _$BankAccountResponse {
  factory BankAccountResponse({
    @JsonKey(name: 'code_transaction') required String codeTransaction,
    @JsonKey(name: 'data') required BankAccountsData data,
  }) = _BankAccountResponse;

  factory BankAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$BankAccountResponseFromJson(json);
}

@freezed
class BankAccountsData with _$BankAccountsData {
  const factory BankAccountsData({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required dynamic next,
    @JsonKey(name: 'previous') required dynamic previous,
    @JsonKey(name: 'results') required List<BankAccountsData> results,
  }) = _BankAccountsData;

  factory BankAccountsData.fromJson(Map<String, dynamic> json) =>
      _$BankAccountsDataFromJson(json);
}
