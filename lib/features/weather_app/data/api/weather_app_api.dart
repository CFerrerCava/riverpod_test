import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_test/features/weather_app/domain/weather_app_entities.dart';

part 'weather_app_api.g.dart';

@RestApi()
abstract class WeatherAppApi {
  factory WeatherAppApi(Dio dio) = _WeatherAppApi;

  @GET('/weather/point')
  Future<HttpResponse<WeatherResponse>> getWeather(
    @Queries() Map<String, dynamic> querie,
  );
}
