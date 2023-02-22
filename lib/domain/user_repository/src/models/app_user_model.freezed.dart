// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String? get cloudToken => throw _privateConstructorUsedError;
  String? get tokenId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  University get university => throw _privateConstructorUsedError;
  Study get study => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get meetPicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String uid,
      String? cloudToken,
      String? tokenId,
      String name,
      University university,
      Study study,
      String? profileImage,
      String? meetPicture});

  $UniversityCopyWith<$Res> get university;
  $StudyCopyWith<$Res> get study;
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? cloudToken = freezed,
    Object? tokenId = freezed,
    Object? name = null,
    Object? university = null,
    Object? study = null,
    Object? profileImage = freezed,
    Object? meetPicture = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      cloudToken: freezed == cloudToken
          ? _value.cloudToken
          : cloudToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenId: freezed == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      study: null == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as Study,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      meetPicture: freezed == meetPicture
          ? _value.meetPicture
          : meetPicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UniversityCopyWith<$Res> get university {
    return $UniversityCopyWith<$Res>(_value.university, (value) {
      return _then(_value.copyWith(university: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyCopyWith<$Res> get study {
    return $StudyCopyWith<$Res>(_value.study, (value) {
      return _then(_value.copyWith(study: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String? cloudToken,
      String? tokenId,
      String name,
      University university,
      Study study,
      String? profileImage,
      String? meetPicture});

  @override
  $UniversityCopyWith<$Res> get university;
  @override
  $StudyCopyWith<$Res> get study;
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? cloudToken = freezed,
    Object? tokenId = freezed,
    Object? name = null,
    Object? university = null,
    Object? study = null,
    Object? profileImage = freezed,
    Object? meetPicture = freezed,
  }) {
    return _then(_$_AppUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      cloudToken: freezed == cloudToken
          ? _value.cloudToken
          : cloudToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenId: freezed == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      study: null == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as Study,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      meetPicture: freezed == meetPicture
          ? _value.meetPicture
          : meetPicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {required this.uid,
      this.cloudToken,
      this.tokenId,
      required this.name,
      required this.university,
      required this.study,
      this.profileImage,
      this.meetPicture});

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String uid;
  @override
  final String? cloudToken;
  @override
  final String? tokenId;
  @override
  final String name;
  @override
  final University university;
  @override
  final Study study;
  @override
  final String? profileImage;
  @override
  final String? meetPicture;

  @override
  String toString() {
    return 'AppUser(uid: $uid, cloudToken: $cloudToken, tokenId: $tokenId, name: $name, university: $university, study: $study, profileImage: $profileImage, meetPicture: $meetPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.cloudToken, cloudToken) ||
                other.cloudToken == cloudToken) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.study, study) || other.study == study) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.meetPicture, meetPicture) ||
                other.meetPicture == meetPicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, cloudToken, tokenId, name,
      university, study, profileImage, meetPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required final String uid,
      final String? cloudToken,
      final String? tokenId,
      required final String name,
      required final University university,
      required final Study study,
      final String? profileImage,
      final String? meetPicture}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String get uid;
  @override
  String? get cloudToken;
  @override
  String? get tokenId;
  @override
  String get name;
  @override
  University get university;
  @override
  Study get study;
  @override
  String? get profileImage;
  @override
  String? get meetPicture;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
