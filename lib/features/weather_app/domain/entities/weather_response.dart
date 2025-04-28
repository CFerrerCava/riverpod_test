import 'package:json_annotation/json_annotation.dart';

import 'package:riverpod_test/features/weather_app/domain/entities/location_model.dart';
import 'package:riverpod_test/features/weather_app/domain/entities/timelines_model.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  WeatherResponse({
    this.timelines,
    this.location,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  @JsonKey(name: 'timelines')
  Timelines? timelines;
  @JsonKey(name: 'location')
  Location? location;

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
