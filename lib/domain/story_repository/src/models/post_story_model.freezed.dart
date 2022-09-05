// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostStory _$PostStoryFromJson(Map<String, dynamic> json) {
  return _PostStory.fromJson(json);
}

/// @nodoc
mixin _$PostStory {
  int get userId => throw _privateConstructorUsedError;
  int get universityId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostStoryCopyWith<PostStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStoryCopyWith<$Res> {
  factory $PostStoryCopyWith(PostStory value, $Res Function(PostStory) then) =
      _$PostStoryCopyWithImpl<$Res>;
  $Res call(
      {int userId, int universityId, String body, String backgroundColor});
}

/// @nodoc
class _$PostStoryCopyWithImpl<$Res> implements $PostStoryCopyWith<$Res> {
  _$PostStoryCopyWithImpl(this._value, this._then);

  final PostStory _value;
  // ignore: unused_field
  final $Res Function(PostStory) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? universityId = freezed,
    Object? body = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PostStoryCopyWith<$Res> implements $PostStoryCopyWith<$Res> {
  factory _$$_PostStoryCopyWith(
          _$_PostStory value, $Res Function(_$_PostStory) then) =
      __$$_PostStoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int userId, int universityId, String body, String backgroundColor});
}

/// @nodoc
class __$$_PostStoryCopyWithImpl<$Res> extends _$PostStoryCopyWithImpl<$Res>
    implements _$$_PostStoryCopyWith<$Res> {
  __$$_PostStoryCopyWithImpl(
      _$_PostStory _value, $Res Function(_$_PostStory) _then)
      : super(_value, (v) => _then(v as _$_PostStory));

  @override
  _$_PostStory get _value => super._value as _$_PostStory;

  @override
  $Res call({
    Object? userId = freezed,
    Object? universityId = freezed,
    Object? body = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$_PostStory(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostStory implements _PostStory {
  const _$_PostStory(
      {required this.userId,
      required this.universityId,
      required this.body,
      required this.backgroundColor});

  factory _$_PostStory.fromJson(Map<String, dynamic> json) =>
      _$$_PostStoryFromJson(json);

  @override
  final int userId;
  @override
  final int universityId;
  @override
  final String body;
  @override
  final String backgroundColor;

  @override
  String toString() {
    return 'PostStory(userId: $userId, universityId: $universityId, body: $body, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostStory &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.universityId, universityId) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(universityId),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(backgroundColor));

  @JsonKey(ignore: true)
  @override
  _$$_PostStoryCopyWith<_$_PostStory> get copyWith =>
      __$$_PostStoryCopyWithImpl<_$_PostStory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostStoryToJson(
      this,
    );
  }
}

abstract class _PostStory implements PostStory {
  const factory _PostStory(
      {required final int userId,
      required final int universityId,
      required final String body,
      required final String backgroundColor}) = _$_PostStory;

  factory _PostStory.fromJson(Map<String, dynamic> json) =
      _$_PostStory.fromJson;

  @override
  int get userId;
  @override
  int get universityId;
  @override
  String get body;
  @override
  String get backgroundColor;
  @override
  @JsonKey(ignore: true)
  _$$_PostStoryCopyWith<_$_PostStory> get copyWith =>
      throw _privateConstructorUsedError;
}
