import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const String weatherApiKey = 'weatherApiKey';

  Future<void> setWeatherApiKey(String apiKey) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString(weatherApiKey, apiKey);
  }

  Future<String?> getWeatherApiKey() async {
    final intance = await SharedPreferences.getInstance();
    return intance.getString(weatherApiKey);
  }
}
