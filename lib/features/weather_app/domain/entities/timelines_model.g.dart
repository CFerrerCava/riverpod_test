// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timelines_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timelines _$TimelinesFromJson(Map<String, dynamic> json) => Timelines(
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => Hourly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimelinesToJson(Timelines instance) => <String, dynamic>{
      'hourly': instance.hourly,
    };
