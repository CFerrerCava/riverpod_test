// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      values: (json['values'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'time': instance.time?.toIso8601String(),
      'values': instance.values,
    };
