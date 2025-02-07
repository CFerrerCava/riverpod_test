import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'quotes_response.freezed.dart';
part 'quotes_response.g.dart';

@freezed
class QuotesResponse with _$QuotesResponse {
  const factory QuotesResponse({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'author') String? author,
    @JsonKey(name: 'numberOfVotes') int? numberOfVotes,
    @JsonKey(name: 'rating') double? rating,
  }) = _QuotesResponse;

  factory QuotesResponse.fromJson(Map<String, dynamic> json) =>
      _$QuotesResponseFromJson(json);
}
