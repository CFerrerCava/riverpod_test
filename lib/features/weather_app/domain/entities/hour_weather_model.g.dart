// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourWeatherModel _$HourWeatherModelFromJson(Map<String, dynamic> json) =>
    HourWeatherModel(
      airTemperature1000Hpa: json['airTemperature1000hpa'] == null
          ? null
          : TemperatureModel.fromJson(
              json['airTemperature1000hpa'] as Map<String, dynamic>),
      cloudCover: json['cloudCover'] == null
          ? null
          : TemperatureModel.fromJson(
              json['cloudCover'] as Map<String, dynamic>),
      currentSpeed: json['currentSpeed'] == null
          ? null
          : SpeedModel.fromJson(json['currentSpeed'] as Map<String, dynamic>),
      humidity: json['humidity'] == null
          ? null
          : TemperatureModel.fromJson(json['humidity'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$HourWeatherModelToJson(HourWeatherModel instance) =>
    <String, dynamic>{
      'airTemperature1000hpa': instance.airTemperature1000Hpa,
      'cloudCover': instance.cloudCover,
      'currentSpeed': instance.currentSpeed,
      'humidity': instance.humidity,
      'time': instance.time?.toIso8601String(),
    };
