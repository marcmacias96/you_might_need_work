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
class BankResponse with _$BankResponse {
  factory BankResponse({
    @JsonKey(name: 'code_transaction') required String codeTransaction,
    @JsonKey(name: 'data') required BanksData data,
  }) = _BankResponse;

  factory BankResponse.fromJson(Map<String, dynamic> json) =>
      _$BankResponseFromJson(json);
}

@freezed
class BanksData with _$BanksData {
  const factory BanksData({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required dynamic next,
    @JsonKey(name: 'previous') required dynamic previous,
    @JsonKey(name: 'results') required List<Bank> results,
  }) = _BanksData;

  factory BanksData.fromJson(Map<String, dynamic> json) =>
      _$BanksDataFromJson(json);
}
