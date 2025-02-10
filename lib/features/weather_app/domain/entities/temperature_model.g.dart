// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemperatureModel _$TemperatureModelFromJson(Map<String, dynamic> json) =>
    TemperatureModel(
      noaa: (json['noaa'] as num?)?.toDouble(),
      sg: (json['sg'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TemperatureModelToJson(TemperatureModel instance) =>
    <String, dynamic>{
      'noaa': instance.noaa,
      'sg': instance.sg,
    };
