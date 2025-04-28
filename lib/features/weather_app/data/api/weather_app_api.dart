import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

part 'weather_app_api.g.dart';

@RestApi()
abstract class WeatherAppApi {
  factory WeatherAppApi(Dio dio) = _WeatherAppApi;

  @GET('/weather/forecast')
  Future<HttpResponse<WeatherResponse>> getWeather({
    @Query('location') String? location,
    @Query('timesteps') String? timesteps,
  });
}
