// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  int get lastTimeOnline => throw _privateConstructorUsedError;
  int get universityId => throw _privateConstructorUsedError;
  String get universityName => throw _privateConstructorUsedError;
  UniversityFaculty get universityFaculty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String? profileImage,
      Sex sex,
      bool online,
      int lastTimeOnline,
      int universityId,
      String universityName,
      UniversityFaculty universityFaculty});

  $UniversityFacultyCopyWith<$Res> get universityFaculty;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? sex = freezed,
    Object? online = freezed,
    Object? lastTimeOnline = freezed,
    Object? universityId = freezed,
    Object? universityName = freezed,
    Object? universityFaculty = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      lastTimeOnline: lastTimeOnline == freezed
          ? _value.lastTimeOnline
          : lastTimeOnline // ignore: cast_nullable_to_non_nullable
              as int,
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String,
      universityFaculty: universityFaculty == freezed
          ? _value.universityFaculty
          : universityFaculty // ignore: cast_nullable_to_non_nullable
              as UniversityFaculty,
    ));
  }

  @override
  $UniversityFacultyCopyWith<$Res> get universityFaculty {
    return $UniversityFacultyCopyWith<$Res>(_value.universityFaculty, (value) {
      return _then(_value.copyWith(universityFaculty: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String? profileImage,
      Sex sex,
      bool online,
      int lastTimeOnline,
      int universityId,
      String universityName,
      UniversityFaculty universityFaculty});

  @override
  $UniversityFacultyCopyWith<$Res> get universityFaculty;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? profileImage = freezed,
    Object? sex = freezed,
    Object? online = freezed,
    Object? lastTimeOnline = freezed,
    Object? universityId = freezed,
    Object? universityName = freezed,
    Object? universityFaculty = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      lastTimeOnline: lastTimeOnline == freezed
          ? _value.lastTimeOnline
          : lastTimeOnline // ignore: cast_nullable_to_non_nullable
              as int,
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String,
      universityFaculty: universityFaculty == freezed
          ? _value.universityFaculty
          : universityFaculty // ignore: cast_nullable_to_non_nullable
              as UniversityFaculty,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.username,
      this.profileImage,
      required this.sex,
      required this.online,
      required this.lastTimeOnline,
      required this.universityId,
      required this.universityName,
      required this.universityFaculty});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? profileImage;
  @override
  final Sex sex;
  @override
  final bool online;
  @override
  final int lastTimeOnline;
  @override
  final int universityId;
  @override
  final String universityName;
  @override
  final UniversityFaculty universityFaculty;

  @override
  String toString() {
    return 'User(id: $id, username: $username, profileImage: $profileImage, sex: $sex, online: $online, lastTimeOnline: $lastTimeOnline, universityId: $universityId, universityName: $universityName, universityFaculty: $universityFaculty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.online, online) &&
            const DeepCollectionEquality()
                .equals(other.lastTimeOnline, lastTimeOnline) &&
            const DeepCollectionEquality()
                .equals(other.universityId, universityId) &&
            const DeepCollectionEquality()
                .equals(other.universityName, universityName) &&
            const DeepCollectionEquality()
                .equals(other.universityFaculty, universityFaculty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(online),
      const DeepCollectionEquality().hash(lastTimeOnline),
      const DeepCollectionEquality().hash(universityId),
      const DeepCollectionEquality().hash(universityName),
      const DeepCollectionEquality().hash(universityFaculty));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String username,
      final String? profileImage,
      required final Sex sex,
      required final bool online,
      required final int lastTimeOnline,
      required final int universityId,
      required final String universityName,
      required final UniversityFaculty universityFaculty}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String? get profileImage;
  @override
  Sex get sex;
  @override
  bool get online;
  @override
  int get lastTimeOnline;
  @override
  int get universityId;
  @override
  String get universityName;
  @override
  UniversityFaculty get universityFaculty;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
