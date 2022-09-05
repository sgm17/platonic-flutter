// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String? get facultyName => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get backgroundColor => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int userId,
      String username,
      String profileImage,
      String? facultyName,
      String body,
      String backgroundColor,
      int createdAt});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  final Story _value;
  // ignore: unused_field
  final $Res Function(Story) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? facultyName = freezed,
    Object? body = freezed,
    Object? backgroundColor = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      facultyName: facultyName == freezed
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$_StoryCopyWith(_$_Story value, $Res Function(_$_Story) then) =
      __$$_StoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int userId,
      String username,
      String profileImage,
      String? facultyName,
      String body,
      String backgroundColor,
      int createdAt});
}

/// @nodoc
class __$$_StoryCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$$_StoryCopyWith<$Res> {
  __$$_StoryCopyWithImpl(_$_Story _value, $Res Function(_$_Story) _then)
      : super(_value, (v) => _then(v as _$_Story));

  @override
  _$_Story get _value => super._value as _$_Story;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? facultyName = freezed,
    Object? body = freezed,
    Object? backgroundColor = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Story(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      facultyName: facultyName == freezed
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Story implements _Story {
  const _$_Story(
      {required this.id,
      required this.userId,
      required this.username,
      required this.profileImage,
      this.facultyName,
      required this.body,
      required this.backgroundColor,
      required this.createdAt});

  factory _$_Story.fromJson(Map<String, dynamic> json) =>
      _$$_StoryFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String username;
  @override
  final String profileImage;
  @override
  final String? facultyName;
  @override
  final String body;
  @override
  final String backgroundColor;
  @override
  final int createdAt;

  @override
  String toString() {
    return 'Story(id: $id, userId: $userId, username: $username, profileImage: $profileImage, facultyName: $facultyName, body: $body, backgroundColor: $backgroundColor, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Story &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other.facultyName, facultyName) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(facultyName),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_StoryCopyWith<_$_Story> get copyWith =>
      __$$_StoryCopyWithImpl<_$_Story>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryToJson(
      this,
    );
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {required final int id,
      required final int userId,
      required final String username,
      required final String profileImage,
      final String? facultyName,
      required final String body,
      required final String backgroundColor,
      required final int createdAt}) = _$_Story;

  factory _Story.fromJson(Map<String, dynamic> json) = _$_Story.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get username;
  @override
  String get profileImage;
  @override
  String? get facultyName;
  @override
  String get body;
  @override
  String get backgroundColor;
  @override
  int get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_StoryCopyWith<_$_Story> get copyWith =>
      throw _privateConstructorUsedError;
}
