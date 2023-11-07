import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_might_need_work/data/auth/models/models.dart';
import 'package:you_might_need_work/data/local/local.dart';

@LazySingleton(as: ILocalRepository)
class LocalRepository implements ILocalRepository {
  LocalRepository({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  @override
  Future<void> cacheAuthData(AuthToken authToken) async {
    await _sharedPreferences.setString(
      'authData',
      jsonEncode(authToken.toJson()),
    );
  }

  @override
  Future<void> removeAuthCache() async {
    await _sharedPreferences.clear();
  }

  @override
  AuthToken? getAuthData() {
    final encodeData = _sharedPreferences.getString('authData');
    if (encodeData == null) {
      return null;
    }
    return AuthToken.fromJson(
      jsonDecode(encodeData) as Map<String, dynamic>,
    );
  }

  @override
  int? getUserId() {
    final encodeData = _sharedPreferences.getString('authData');
    if (encodeData == null) {
      return null;
    }
    final tokenData =
        AuthToken.fromJson(jsonDecode(encodeData) as Map<String, dynamic>);
    final tokenPayload = JwtDecoder.decode(tokenData.access);
    final userId = tokenPayload['user_id'] as int;
    return userId;
  }
}
