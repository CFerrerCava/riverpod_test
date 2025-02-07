// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotesResponseImpl _$$QuotesResponseImplFromJson(Map<String, dynamic> json) =>
    _$QuotesResponseImpl(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      author: json['author'] as String?,
      numberOfVotes: (json['numberOfVotes'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$QuotesResponseImplToJson(
        _$QuotesResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'author': instance.author,
      'numberOfVotes': instance.numberOfVotes,
      'rating': instance.rating,
    };
