import 'package:json_annotation/json_annotation.dart';

part 'temperature_model.g.dart';

@JsonSerializable()
class TemperatureModel {
  TemperatureModel({
    this.noaa,
    this.sg,
  });

  factory TemperatureModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureModelFromJson(json);
  @JsonKey(name: "noaa")
  double? noaa;
  @JsonKey(name: "sg")
  double? sg;

  Map<String, dynamic> toJson() => _$TemperatureModelToJson(this);
}
