import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_test/features/weather_app/domain/entities/hourly_model.dart';

part 'timelines_model.g.dart';

@JsonSerializable()
class Timelines {
  Timelines({
    this.hourly,
  });

  factory Timelines.fromJson(Map<String, dynamic> json) =>
      _$TimelinesFromJson(json);
  @JsonKey(name: "hourly")
  List<Hourly>? hourly;

  Map<String, dynamic> toJson() => _$TimelinesToJson(this);
}
