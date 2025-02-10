import 'package:json_annotation/json_annotation.dart';

part 'speed_model.g.dart';

@JsonSerializable()
class SpeedModel {
  SpeedModel({
    this.meto,
    this.sg,
  });

  factory SpeedModel.fromJson(Map<String, dynamic> json) =>
      _$SpeedModelFromJson(json);

  @JsonKey(name: 'meto')
  double? meto;
  @JsonKey(name: 'sg')
  double? sg;

  Map<String, dynamic> toJson() => _$SpeedModelToJson(this);
}
