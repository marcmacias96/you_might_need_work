
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
