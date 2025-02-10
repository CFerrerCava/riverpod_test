import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_test/features/weather_app/domain/entities/speed_model.dart';
import 'package:riverpod_test/features/weather_app/domain/entities/temperature_model.dart';

part 'hour_weather_model.g.dart';

@JsonSerializable()
class HourWeatherModel {
  HourWeatherModel({
    this.airTemperature1000Hpa,
    this.cloudCover,
    this.currentSpeed,
    this.humidity,
    this.time,
  });

  factory HourWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherModelFromJson(json);
  @JsonKey(name: 'airTemperature1000hpa')
  TemperatureModel? airTemperature1000Hpa;
  @JsonKey(name: 'cloudCover')
  TemperatureModel? cloudCover;
  @JsonKey(name: 'currentSpeed')
  SpeedModel? currentSpeed;
  @JsonKey(name: 'humidity')
  TemperatureModel? humidity;
  @JsonKey(name: 'time')
  DateTime? time;

  Map<String, dynamic> toJson() => _$HourWeatherModelToJson(this);
}
