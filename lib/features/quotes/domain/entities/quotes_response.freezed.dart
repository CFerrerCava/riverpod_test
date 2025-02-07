// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotesResponse _$QuotesResponseFromJson(Map<String, dynamic> json) {
  return _QuotesResponse.fromJson(json);
}

/// @nodoc
mixin _$QuotesResponse {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfVotes")
  int? get numberOfVotes => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;

  /// Serializes this QuotesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuotesResponseCopyWith<QuotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesResponseCopyWith<$Res> {
  factory $QuotesResponseCopyWith(
          QuotesResponse value, $Res Function(QuotesResponse) then) =
      _$QuotesResponseCopyWithImpl<$Res, QuotesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "numberOfVotes") int? numberOfVotes,
      @JsonKey(name: "rating") double? rating});
}

/// @nodoc
class _$QuotesResponseCopyWithImpl<$Res, $Val extends QuotesResponse>
    implements $QuotesResponseCopyWith<$Res> {
  _$QuotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? author = freezed,
    Object? numberOfVotes = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfVotes: freezed == numberOfVotes
          ? _value.numberOfVotes
          : numberOfVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotesResponseImplCopyWith<$Res>
    implements $QuotesResponseCopyWith<$Res> {
  factory _$$QuotesResponseImplCopyWith(_$QuotesResponseImpl value,
          $Res Function(_$QuotesResponseImpl) then) =
      __$$QuotesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "numberOfVotes") int? numberOfVotes,
      @JsonKey(name: "rating") double? rating});
}

/// @nodoc
class __$$QuotesResponseImplCopyWithImpl<$Res>
    extends _$QuotesResponseCopyWithImpl<$Res, _$QuotesResponseImpl>
    implements _$$QuotesResponseImplCopyWith<$Res> {
  __$$QuotesResponseImplCopyWithImpl(
      _$QuotesResponseImpl _value, $Res Function(_$QuotesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? author = freezed,
    Object? numberOfVotes = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$QuotesResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfVotes: freezed == numberOfVotes
          ? _value.numberOfVotes
          : numberOfVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotesResponseImpl implements _QuotesResponse {
  const _$QuotesResponseImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "text") this.text,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "numberOfVotes") this.numberOfVotes,
      @JsonKey(name: "rating") this.rating});

  factory _$QuotesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotesResponseImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "text")
  final String? text;
  @override
  @JsonKey(name: "author")
  final String? author;
  @override
  @JsonKey(name: "numberOfVotes")
  final int? numberOfVotes;
  @override
  @JsonKey(name: "rating")
  final double? rating;

  @override
  String toString() {
    return 'QuotesResponse(id: $id, text: $text, author: $author, numberOfVotes: $numberOfVotes, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotesResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.numberOfVotes, numberOfVotes) ||
                other.numberOfVotes == numberOfVotes) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, text, author, numberOfVotes, rating);

  /// Create a copy of QuotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotesResponseImplCopyWith<_$QuotesResponseImpl> get copyWith =>
      __$$QuotesResponseImplCopyWithImpl<_$QuotesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotesResponseImplToJson(
      this,
    );
  }
}

abstract class _QuotesResponse implements QuotesResponse {
  const factory _QuotesResponse(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "text") final String? text,
      @JsonKey(name: "author") final String? author,
      @JsonKey(name: "numberOfVotes") final int? numberOfVotes,
      @JsonKey(name: "rating") final double? rating}) = _$QuotesResponseImpl;

  factory _QuotesResponse.fromJson(Map<String, dynamic> json) =
      _$QuotesResponseImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "text")
  String? get text;
  @override
  @JsonKey(name: "author")
  String? get author;
  @override
  @JsonKey(name: "numberOfVotes")
  int? get numberOfVotes;
  @override
  @JsonKey(name: "rating")
  double? get rating;

  /// Create a copy of QuotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuotesResponseImplCopyWith<_$QuotesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
