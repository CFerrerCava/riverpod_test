// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      cost: (json['cost'] as num?)?.toInt(),
      dailyQuota: (json['dailyQuota'] as num?)?.toInt(),
      end: json['end'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      params:
          (json['params'] as List<dynamic>?)?.map((e) => e as String).toList(),
      requestCount: (json['requestCount'] as num?)?.toInt(),
      start: json['start'] as String?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'cost': instance.cost,
      'dailyQuota': instance.dailyQuota,
      'end': instance.end,
      'lat': instance.lat,
      'lng': instance.lng,
      'params': instance.params,
      'requestCount': instance.requestCount,
      'start': instance.start,
    };
