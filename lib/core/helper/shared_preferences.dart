import 'package:pets_finder/core/helper/extensions.dart';
import 'package:pets_finder/core/networking/cache_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences sharedPreferences;

  AppPreferences({required this.sharedPreferences});

  Future<void> setAccessToken({required String accessToken}) async {
    sharedPreferences.setData(
        key: CacheConstants.accessToken, value: accessToken);
  }

  Future<String> getAccessToken() async {
    String accessToken =
        sharedPreferences.getString(CacheConstants.accessToken) ?? " ";
    return accessToken;
  }
}
