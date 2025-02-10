import 'package:json_annotation/json_annotation.dart';

import 'package:riverpod_test/features/weather_app/domain/entities/hour_weather_model.dart';
import 'package:riverpod_test/features/weather_app/domain/entities/meta_model.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  WeatherResponse({
    this.hours,
    this.meta,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
  @JsonKey(name: 'hours')
  List<HourWeatherModel>? hours;
  @JsonKey(name: 'meta')
  Meta? meta;

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
