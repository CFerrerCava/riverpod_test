import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_test/features/weather_app/data/api/weather_app_api.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

sealed class WeatherAppRepositoryMethods {
  Future<HttpResponse<WeatherResponse>> getWeather(Map<String, dynamic> querie);
}

class WeatherAppRepoImpl implements WeatherAppRepositoryMethods {
  WeatherAppRepoImpl(this._dio) {
    _api = WeatherAppApi(_dio);
  }
  final Dio _dio;
  late final WeatherAppApi _api;

  @override
  Future<HttpResponse<WeatherResponse>> getWeather(
    Map<String, dynamic> querie,
  ) async {
    return _api.getWeather(querie);
  }
}
