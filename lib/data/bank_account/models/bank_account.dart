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
