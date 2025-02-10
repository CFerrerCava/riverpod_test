// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeedModel _$SpeedModelFromJson(Map<String, dynamic> json) => SpeedModel(
      meto: (json['meto'] as num?)?.toDouble(),
      sg: (json['sg'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SpeedModelToJson(SpeedModel instance) =>
    <String, dynamic>{
      'meto': instance.meto,
      'sg': instance.sg,
    };
