import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_note_model.freezed.dart';
part 'simple_note_model.g.dart';

@freezed
class SimpleNoteModel with _$SimpleNoteModel {
  const factory SimpleNoteModel({
    required String name,
    required String description,
  }) = _SimpleNoteModel;

  factory SimpleNoteModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleNoteModelFromJson(json);
}
