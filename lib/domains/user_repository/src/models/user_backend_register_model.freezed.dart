// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_backend_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBackendRegister _$UserBackendRegisterFromJson(Map<String, dynamic> json) {
  return _UserBackendRegister.fromJson(json);
}

/// @nodoc
mixin _$UserBackendRegister {
  String get uid => throw _privateConstructorUsedError;
  String? get cloudToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  University get university => throw _privateConstructorUsedError;
  Faculty get faculty => throw _privateConstructorUsedError;
  Study get study => throw _privateConstructorUsedError;
  MeetSettings get meetSettings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBackendRegisterCopyWith<UserBackendRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBackendRegisterCopyWith<$Res> {
  factory $UserBackendRegisterCopyWith(
          UserBackendRegister value, $Res Function(UserBackendRegister) then) =
      _$UserBackendRegisterCopyWithImpl<$Res, UserBackendRegister>;
  @useResult
  $Res call(
      {String uid,
      String? cloudToken,
      String name,
      int age,
      Sex sex,
      University university,
      Faculty faculty,
      Study study,
      MeetSettings meetSettings});

  $UniversityCopyWith<$Res> get university;
  $FacultyCopyWith<$Res> get faculty;
  $StudyCopyWith<$Res> get study;
  $MeetSettingsCopyWith<$Res> get meetSettings;
}

/// @nodoc
class _$UserBackendRegisterCopyWithImpl<$Res, $Val extends UserBackendRegister>
    implements $UserBackendRegisterCopyWith<$Res> {
  _$UserBackendRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? cloudToken = freezed,
    Object? name = null,
    Object? age = null,
    Object? sex = null,
    Object? university = null,
    Object? faculty = null,
    Object? study = null,
    Object? meetSettings = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      study: null == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as Study,
      meetSettings: null == meetSettings
          ? _value.meetSettings
          : meetSettings // ignore: cast_nullable_to_non_nullable
              as MeetSettings,
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
  $FacultyCopyWith<$Res> get faculty {
    return $FacultyCopyWith<$Res>(_value.faculty, (value) {
      return _then(_value.copyWith(faculty: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyCopyWith<$Res> get study {
    return $StudyCopyWith<$Res>(_value.study, (value) {
      return _then(_value.copyWith(study: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeetSettingsCopyWith<$Res> get meetSettings {
    return $MeetSettingsCopyWith<$Res>(_value.meetSettings, (value) {
      return _then(_value.copyWith(meetSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserBackendRegisterCopyWith<$Res>
    implements $UserBackendRegisterCopyWith<$Res> {
  factory _$$_UserBackendRegisterCopyWith(_$_UserBackendRegister value,
          $Res Function(_$_UserBackendRegister) then) =
      __$$_UserBackendRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String? cloudToken,
      String name,
      int age,
      Sex sex,
      University university,
      Faculty faculty,
      Study study,
      MeetSettings meetSettings});

  @override
  $UniversityCopyWith<$Res> get university;
  @override
  $FacultyCopyWith<$Res> get faculty;
  @override
  $StudyCopyWith<$Res> get study;
  @override
  $MeetSettingsCopyWith<$Res> get meetSettings;
}

/// @nodoc
class __$$_UserBackendRegisterCopyWithImpl<$Res>
    extends _$UserBackendRegisterCopyWithImpl<$Res, _$_UserBackendRegister>
    implements _$$_UserBackendRegisterCopyWith<$Res> {
  __$$_UserBackendRegisterCopyWithImpl(_$_UserBackendRegister _value,
      $Res Function(_$_UserBackendRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? cloudToken = freezed,
    Object? name = null,
    Object? age = null,
    Object? sex = null,
    Object? university = null,
    Object? faculty = null,
    Object? study = null,
    Object? meetSettings = null,
  }) {
    return _then(_$_UserBackendRegister(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      cloudToken: freezed == cloudToken
          ? _value.cloudToken
          : cloudToken // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      study: null == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as Study,
      meetSettings: null == meetSettings
          ? _value.meetSettings
          : meetSettings // ignore: cast_nullable_to_non_nullable
              as MeetSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBackendRegister implements _UserBackendRegister {
  const _$_UserBackendRegister(
      {required this.uid,
      this.cloudToken,
      required this.name,
      required this.age,
      required this.sex,
      required this.university,
      required this.faculty,
      required this.study,
      required this.meetSettings});

  factory _$_UserBackendRegister.fromJson(Map<String, dynamic> json) =>
      _$$_UserBackendRegisterFromJson(json);

  @override
  final String uid;
  @override
  final String? cloudToken;
  @override
  final String name;
  @override
  final int age;
  @override
  final Sex sex;
  @override
  final University university;
  @override
  final Faculty faculty;
  @override
  final Study study;
  @override
  final MeetSettings meetSettings;

  @override
  String toString() {
    return 'UserBackendRegister(uid: $uid, cloudToken: $cloudToken, name: $name, age: $age, sex: $sex, university: $university, faculty: $faculty, study: $study, meetSettings: $meetSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBackendRegister &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.cloudToken, cloudToken) ||
                other.cloudToken == cloudToken) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.study, study) || other.study == study) &&
            (identical(other.meetSettings, meetSettings) ||
                other.meetSettings == meetSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, cloudToken, name, age, sex,
      university, faculty, study, meetSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBackendRegisterCopyWith<_$_UserBackendRegister> get copyWith =>
      __$$_UserBackendRegisterCopyWithImpl<_$_UserBackendRegister>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBackendRegisterToJson(
      this,
    );
  }
}

abstract class _UserBackendRegister implements UserBackendRegister {
  const factory _UserBackendRegister(
      {required final String uid,
      final String? cloudToken,
      required final String name,
      required final int age,
      required final Sex sex,
      required final University university,
      required final Faculty faculty,
      required final Study study,
      required final MeetSettings meetSettings}) = _$_UserBackendRegister;

  factory _UserBackendRegister.fromJson(Map<String, dynamic> json) =
      _$_UserBackendRegister.fromJson;

  @override
  String get uid;
  @override
  String? get cloudToken;
  @override
  String get name;
  @override
  int get age;
  @override
  Sex get sex;
  @override
  University get university;
  @override
  Faculty get faculty;
  @override
  Study get study;
  @override
  MeetSettings get meetSettings;
  @override
  @JsonKey(ignore: true)
  _$$_UserBackendRegisterCopyWith<_$_UserBackendRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
