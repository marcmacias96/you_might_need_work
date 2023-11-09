import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';
part 'bank_account.g.dart';

@freezed
class BankAccount with _$BankAccount {
  factory BankAccount({
    required int user,
    required int bank,
    @JsonKey(name: 'account_number') required String accountNumber,
    @JsonKey(name: 'account_type') required String accountType,
    @JsonKey(name: 'default') required bool bankDefault,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
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
