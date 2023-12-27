import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kAccessToken = 'access_token';
const kRefreshToken = 'refresh_token';

class SharedRefService {
  // final SharedPreferences sharedPreferences;

  SharedRefService._();

  // static Future<SharedRefService> init() async {
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   return this;
  // }

  Future<SharedPreferences> get() async {
    return await SharedPreferences.getInstance();
  }

  Future<Option<Unit>> setToken(String token) async {
    final prefs = await get();
    final result = await prefs.setString(kAccessToken, token);
    return result ? some(unit) : none();
  }

  Future<String> getToken() async {
    final prefs = await get();
    return prefs.getString(kAccessToken) ?? '';
  }

  Future<Unit> removeToken() async {
    final prefs = await get();
    await prefs.remove(kAccessToken);
    return unit;
  }

  Future<Option<Unit>> setRefreshToken(String token) async {
    final prefs = await get();
    final result = await prefs.setString(kRefreshToken, token);
    return result ? some(unit) : none();
  }

  Future<String> getRefreshToken() async {
    final prefs = await get();
    return prefs.getString(kRefreshToken) ?? '';
  }

  Future<Unit> removeRefreshToken() async {
    final prefs = await get();
    await prefs.remove(kRefreshToken);
    return unit;
  }

  Future<Option<Unit>> saveId(String uuid) async {
    final prefs = await get();
    final result = await prefs.setString('uuid', uuid);
    return result ? some(unit) : none();
  }
}

final sharedRef = Provider<SharedRefService>((ref) => SharedRefService._());
