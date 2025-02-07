// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleNoteModel _$SimpleNoteModelFromJson(Map<String, dynamic> json) {
  return _SimpleNoteModel.fromJson(json);
}

/// @nodoc
mixin _$SimpleNoteModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this SimpleNoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleNoteModelCopyWith<SimpleNoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleNoteModelCopyWith<$Res> {
  factory $SimpleNoteModelCopyWith(
          SimpleNoteModel value, $Res Function(SimpleNoteModel) then) =
      _$SimpleNoteModelCopyWithImpl<$Res, SimpleNoteModel>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$SimpleNoteModelCopyWithImpl<$Res, $Val extends SimpleNoteModel>
    implements $SimpleNoteModelCopyWith<$Res> {
  _$SimpleNoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleNoteModelImplCopyWith<$Res>
    implements $SimpleNoteModelCopyWith<$Res> {
  factory _$$SimpleNoteModelImplCopyWith(_$SimpleNoteModelImpl value,
          $Res Function(_$SimpleNoteModelImpl) then) =
      __$$SimpleNoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$SimpleNoteModelImplCopyWithImpl<$Res>
    extends _$SimpleNoteModelCopyWithImpl<$Res, _$SimpleNoteModelImpl>
    implements _$$SimpleNoteModelImplCopyWith<$Res> {
  __$$SimpleNoteModelImplCopyWithImpl(
      _$SimpleNoteModelImpl _value, $Res Function(_$SimpleNoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$SimpleNoteModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleNoteModelImpl implements _SimpleNoteModel {
  const _$SimpleNoteModelImpl({required this.name, required this.description});

  factory _$SimpleNoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleNoteModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'SimpleNoteModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleNoteModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of SimpleNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleNoteModelImplCopyWith<_$SimpleNoteModelImpl> get copyWith =>
      __$$SimpleNoteModelImplCopyWithImpl<_$SimpleNoteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleNoteModelImplToJson(
      this,
    );
  }
}

abstract class _SimpleNoteModel implements SimpleNoteModel {
  const factory _SimpleNoteModel(
      {required final String name,
      required final String description}) = _$SimpleNoteModelImpl;

  factory _SimpleNoteModel.fromJson(Map<String, dynamic> json) =
      _$SimpleNoteModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of SimpleNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleNoteModelImplCopyWith<_$SimpleNoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
