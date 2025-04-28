import 'package:json_annotation/json_annotation.dart';

part 'hourly_model.g.dart';

@JsonSerializable()
class Hourly {
  Hourly({
    this.time,
    this.values,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
  @JsonKey(name: "time")
  DateTime? time;
  @JsonKey(name: "values")
  Map<String, double?>? values;

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}
