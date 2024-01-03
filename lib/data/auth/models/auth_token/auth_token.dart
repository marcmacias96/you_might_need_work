import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token.freezed.dart';
part 'auth_token.g.dart';

@freezed
class AuthToken with _$AuthToken {
  factory AuthToken({
    required String refresh,
    required String access,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenFromJson(json);
}

@freezed
class AuthTokenResponse with _$AuthTokenResponse {
  factory AuthTokenResponse({
    @JsonKey(name: 'code_transaction')
    required String codeTransaction,
    @JsonKey(name: 'data') required AuthToken data,
  }) = _AuthTokenResponse;

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseFromJson(json);
}
