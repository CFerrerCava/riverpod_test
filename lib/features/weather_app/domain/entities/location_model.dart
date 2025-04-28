import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class Location {
  Location({
    this.lat,
    this.lon,
    this.name,
    this.type,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  @JsonKey(name: "lat")
  double? lat;
  @JsonKey(name: "lon")
  double? lon;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "type")
  String? type;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
