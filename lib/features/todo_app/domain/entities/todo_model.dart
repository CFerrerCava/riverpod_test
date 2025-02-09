import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {
  TodoModel({
    this.createdAt,
    this.description,
    this.id,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
  @JsonKey(name: 'createdAt')
  DateTime? createdAt;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'id')
  String? id;

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
