import 'package:json_annotation/json_annotation.dart';
part 'meta_model.g.dart';

@JsonSerializable()
class Meta {
  Meta({
    this.cost,
    this.dailyQuota,
    this.end,
    this.lat,
    this.lng,
    this.params,
    this.requestCount,
    this.start,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  @JsonKey(name: 'cost')
  int? cost;
  @JsonKey(name: 'dailyQuota')
  int? dailyQuota;
  @JsonKey(name: 'end')
  String? end;
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lng')
  double? lng;
  @JsonKey(name: 'params')
  List<String>? params;
  @JsonKey(name: 'requestCount')
  int? requestCount;
  @JsonKey(name: 'start')
  String? start;

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
