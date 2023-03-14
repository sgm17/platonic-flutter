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

/// @nodoc
mixin _$AppUser {
  int get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String? get cloudToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get meetPicture => throw _privateConstructorUsedError;
  int get universityId => throw _privateConstructorUsedError;
  int get facultyId => throw _privateConstructorUsedError;
  int get studyId => throw _privateConstructorUsedError;
  University? get university => throw _privateConstructorUsedError;
  Faculty? get faculty => throw _privateConstructorUsedError;
  Study? get study => throw _privateConstructorUsedError;
  bool? get meetStatus => throw _privateConstructorUsedError;
  Sex? get sexToMeet => throw _privateConstructorUsedError;
  University? get universityToMeet => throw _privateConstructorUsedError;
  int? get universityToMeetId => throw _privateConstructorUsedError;
  List<Faculty>? get facultiesToMeet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {int id,
      String uid,
      String? cloudToken,
      String name,
      String email,
      Sex sex,
      int age,
      String? profileImage,
      String? meetPicture,
      int universityId,
      int facultyId,
      int studyId,
      University? university,
      Faculty? faculty,
      Study? study,
      bool? meetStatus,
      Sex? sexToMeet,
      University? universityToMeet,
      int? universityToMeetId,
      List<Faculty>? facultiesToMeet});

  $UniversityCopyWith<$Res>? get university;
  $FacultyCopyWith<$Res>? get faculty;
  $StudyCopyWith<$Res>? get study;
  $UniversityCopyWith<$Res>? get universityToMeet;
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
    Object? id = null,
    Object? uid = null,
    Object? cloudToken = freezed,
    Object? name = null,
    Object? email = null,
    Object? sex = null,
    Object? age = null,
    Object? profileImage = freezed,
    Object? meetPicture = freezed,
    Object? universityId = null,
    Object? facultyId = null,
    Object? studyId = null,
    Object? university = freezed,
    Object? faculty = freezed,
    Object? study = freezed,
    Object? meetStatus = freezed,
    Object? sexToMeet = freezed,
    Object? universityToMeet = freezed,
    Object? universityToMeetId = freezed,
    Object? facultiesToMeet = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      meetPicture: freezed == meetPicture
          ? _value.meetPicture
          : meetPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      universityId: null == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      facultyId: null == facultyId
          ? _value.facultyId
          : facultyId // ignore: cast_nullable_to_non_nullable
              as int,
      studyId: null == studyId
          ? _value.studyId
          : studyId // ignore: cast_nullable_to_non_nullable
              as int,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as Study?,
      meetStatus: freezed == meetStatus
          ? _value.meetStatus
          : meetStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      sexToMeet: freezed == sexToMeet
          ? _value.sexToMeet
          : sexToMeet // ignore: cast_nullable_to_non_nullable
              as Sex?,
      universityToMeet: freezed == universityToMeet
          ? _value.universityToMeet
          : universityToMeet // ignore: cast_nullable_to_non_nullable
              as University?,
      universityToMeetId: freezed == universityToMeetId
          ? _value.universityToMeetId
          : universityToMeetId // ignore: cast_nullable_to_non_nullable
              as int?,
      facultiesToMeet: freezed == facultiesToMeet
          ? _value.facultiesToMeet
          : facultiesToMeet // ignore: cast_nullable_to_non_nullable
              as List<Faculty>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UniversityCopyWith<$Res>? get university {
    if (_value.university == null) {
      return null;
    }

    return $UniversityCopyWith<$Res>(_value.university!, (value) {
      return _then(_value.copyWith(university: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FacultyCopyWith<$Res>? get faculty {
    if (_value.faculty == null) {
      return null;
    }

    return $FacultyCopyWith<$Res>(_value.faculty!, (value) {
      return _then(_value.copyWith(faculty: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyCopyWith<$Res>? get study {
    if (_value.study == null) {
      return null;
    }

    return $StudyCopyWith<$Res>(_value.study!, (value) {
      return _then(_value.copyWith(study: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UniversityCopyWith<$Res>? get universityToMeet {
    if (_value.universityToMeet == null) {
      return null;
    }

    return $UniversityCopyWith<$Res>(_value.universityToMeet!, (value) {
      return _then(_value.copyWith(universityToMeet: value) as $Val);
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
      {int id,
      String uid,
      String? cloudToken,
      String name,
      String email,
      Sex sex,
      int age,
      String? profileImage,
      String? meetPicture,
      int universityId,
      int facultyId,
      int studyId,
      University? university,
      Faculty? faculty,
      Study? study,
      bool? meetStatus,
      Sex? sexToMeet,
      University? universityToMeet,
      int? universityToMeetId,
      List<Faculty>? facultiesToMeet});

  @override
  $UniversityCopyWith<$Res>? get university;
  @override
  $FacultyCopyWith<$Res>? get faculty;
  @override
  $StudyCopyWith<$Res>? get study;
  @override
  $UniversityCopyWith<$Res>? get universityToMeet;
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
    Object? id = null,
    Object? uid = null,
    Object? cloudToken = freezed,
    Object? name = null,
    Object? email = null,
    Object? sex = null,
    Object? age = null,
    Object? profileImage = freezed,
    Object? meetPicture = freezed,
    Object? universityId = null,
    Object? facultyId = null,
    Object? studyId = null,
    Object? university = freezed,
    Object? faculty = freezed,
    Object? study = freezed,
    Object? meetStatus = freezed,
    Object? sexToMeet = freezed,
    Object? universityToMeet = freezed,
    Object? universityToMeetId = freezed,
    Object? facultiesToMeet = freezed,
  }) {
    return _then(_$_AppUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      meetPicture: freezed == meetPicture
          ? _value.meetPicture
          : meetPicture // ignore: cast_nullable_to_non_nullable
              as String?,
      universityId: null == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      facultyId: null == facultyId
          ? _value.facultyId
          : facultyId // ignore: cast_nullable_to_non_nullable
              as int,
      studyId: null == studyId
          ? _value.studyId
          : studyId // ignore: cast_nullable_to_non_nullable
              as int,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as Study?,
      meetStatus: freezed == meetStatus
          ? _value.meetStatus
          : meetStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      sexToMeet: freezed == sexToMeet
          ? _value.sexToMeet
          : sexToMeet // ignore: cast_nullable_to_non_nullable
              as Sex?,
      universityToMeet: freezed == universityToMeet
          ? _value.universityToMeet
          : universityToMeet // ignore: cast_nullable_to_non_nullable
              as University?,
      universityToMeetId: freezed == universityToMeetId
          ? _value.universityToMeetId
          : universityToMeetId // ignore: cast_nullable_to_non_nullable
              as int?,
      facultiesToMeet: freezed == facultiesToMeet
          ? _value._facultiesToMeet
          : facultiesToMeet // ignore: cast_nullable_to_non_nullable
              as List<Faculty>?,
    ));
  }
}

/// @nodoc

class _$_AppUser extends _AppUser {
  const _$_AppUser(
      {required this.id,
      required this.uid,
      this.cloudToken,
      required this.name,
      required this.email,
      required this.sex,
      required this.age,
      this.profileImage,
      this.meetPicture,
      required this.universityId,
      required this.facultyId,
      required this.studyId,
      this.university,
      this.faculty,
      this.study,
      this.meetStatus,
      this.sexToMeet,
      this.universityToMeet,
      this.universityToMeetId,
      final List<Faculty>? facultiesToMeet})
      : _facultiesToMeet = facultiesToMeet,
        super._();

  @override
  final int id;
  @override
  final String uid;
  @override
  final String? cloudToken;
  @override
  final String name;
  @override
  final String email;
  @override
  final Sex sex;
  @override
  final int age;
  @override
  final String? profileImage;
  @override
  final String? meetPicture;
  @override
  final int universityId;
  @override
  final int facultyId;
  @override
  final int studyId;
  @override
  final University? university;
  @override
  final Faculty? faculty;
  @override
  final Study? study;
  @override
  final bool? meetStatus;
  @override
  final Sex? sexToMeet;
  @override
  final University? universityToMeet;
  @override
  final int? universityToMeetId;
  final List<Faculty>? _facultiesToMeet;
  @override
  List<Faculty>? get facultiesToMeet {
    final value = _facultiesToMeet;
    if (value == null) return null;
    if (_facultiesToMeet is EqualUnmodifiableListView) return _facultiesToMeet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppUser(id: $id, uid: $uid, cloudToken: $cloudToken, name: $name, email: $email, sex: $sex, age: $age, profileImage: $profileImage, meetPicture: $meetPicture, universityId: $universityId, facultyId: $facultyId, studyId: $studyId, university: $university, faculty: $faculty, study: $study, meetStatus: $meetStatus, sexToMeet: $sexToMeet, universityToMeet: $universityToMeet, universityToMeetId: $universityToMeetId, facultiesToMeet: $facultiesToMeet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.cloudToken, cloudToken) ||
                other.cloudToken == cloudToken) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.meetPicture, meetPicture) ||
                other.meetPicture == meetPicture) &&
            (identical(other.universityId, universityId) ||
                other.universityId == universityId) &&
            (identical(other.facultyId, facultyId) ||
                other.facultyId == facultyId) &&
            (identical(other.studyId, studyId) || other.studyId == studyId) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.study, study) || other.study == study) &&
            (identical(other.meetStatus, meetStatus) ||
                other.meetStatus == meetStatus) &&
            (identical(other.sexToMeet, sexToMeet) ||
                other.sexToMeet == sexToMeet) &&
            (identical(other.universityToMeet, universityToMeet) ||
                other.universityToMeet == universityToMeet) &&
            (identical(other.universityToMeetId, universityToMeetId) ||
                other.universityToMeetId == universityToMeetId) &&
            const DeepCollectionEquality()
                .equals(other._facultiesToMeet, _facultiesToMeet));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        cloudToken,
        name,
        email,
        sex,
        age,
        profileImage,
        meetPicture,
        universityId,
        facultyId,
        studyId,
        university,
        faculty,
        study,
        meetStatus,
        sexToMeet,
        universityToMeet,
        universityToMeetId,
        const DeepCollectionEquality().hash(_facultiesToMeet)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);
}

abstract class _AppUser extends AppUser {
  const factory _AppUser(
      {required final int id,
      required final String uid,
      final String? cloudToken,
      required final String name,
      required final String email,
      required final Sex sex,
      required final int age,
      final String? profileImage,
      final String? meetPicture,
      required final int universityId,
      required final int facultyId,
      required final int studyId,
      final University? university,
      final Faculty? faculty,
      final Study? study,
      final bool? meetStatus,
      final Sex? sexToMeet,
      final University? universityToMeet,
      final int? universityToMeetId,
      final List<Faculty>? facultiesToMeet}) = _$_AppUser;
  const _AppUser._() : super._();

  @override
  int get id;
  @override
  String get uid;
  @override
  String? get cloudToken;
  @override
  String get name;
  @override
  String get email;
  @override
  Sex get sex;
  @override
  int get age;
  @override
  String? get profileImage;
  @override
  String? get meetPicture;
  @override
  int get universityId;
  @override
  int get facultyId;
  @override
  int get studyId;
  @override
  University? get university;
  @override
  Faculty? get faculty;
  @override
  Study? get study;
  @override
  bool? get meetStatus;
  @override
  Sex? get sexToMeet;
  @override
  University? get universityToMeet;
  @override
  int? get universityToMeetId;
  @override
  List<Faculty>? get facultiesToMeet;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
