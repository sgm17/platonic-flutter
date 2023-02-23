// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDetail _$RegisterDetailFromJson(Map<String, dynamic> json) {
  return _RegisterDetail.fromJson(json);
}

/// @nodoc
mixin _$RegisterDetail {
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  University? get university => throw _privateConstructorUsedError;
  Faculty? get faculty => throw _privateConstructorUsedError;
  Study? get study => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDetailCopyWith<RegisterDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDetailCopyWith<$Res> {
  factory $RegisterDetailCopyWith(
          RegisterDetail value, $Res Function(RegisterDetail) then) =
      _$RegisterDetailCopyWithImpl<$Res, RegisterDetail>;
  @useResult
  $Res call(
      {String? name,
      int? age,
      Sex sex,
      University? university,
      Faculty? faculty,
      Study? study});

  $UniversityCopyWith<$Res>? get university;
  $FacultyCopyWith<$Res>? get faculty;
  $StudyCopyWith<$Res>? get study;
}

/// @nodoc
class _$RegisterDetailCopyWithImpl<$Res, $Val extends RegisterDetail>
    implements $RegisterDetailCopyWith<$Res> {
  _$RegisterDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
    Object? sex = null,
    Object? university = freezed,
    Object? faculty = freezed,
    Object? study = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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
}

/// @nodoc
abstract class _$$_RegisterDetailCopyWith<$Res>
    implements $RegisterDetailCopyWith<$Res> {
  factory _$$_RegisterDetailCopyWith(
          _$_RegisterDetail value, $Res Function(_$_RegisterDetail) then) =
      __$$_RegisterDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? age,
      Sex sex,
      University? university,
      Faculty? faculty,
      Study? study});

  @override
  $UniversityCopyWith<$Res>? get university;
  @override
  $FacultyCopyWith<$Res>? get faculty;
  @override
  $StudyCopyWith<$Res>? get study;
}

/// @nodoc
class __$$_RegisterDetailCopyWithImpl<$Res>
    extends _$RegisterDetailCopyWithImpl<$Res, _$_RegisterDetail>
    implements _$$_RegisterDetailCopyWith<$Res> {
  __$$_RegisterDetailCopyWithImpl(
      _$_RegisterDetail _value, $Res Function(_$_RegisterDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
    Object? sex = null,
    Object? university = freezed,
    Object? faculty = freezed,
    Object? study = freezed,
  }) {
    return _then(_$_RegisterDetail(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterDetail implements _RegisterDetail {
  const _$_RegisterDetail(
      {this.name,
      this.age,
      required this.sex,
      this.university,
      this.faculty,
      this.study});

  factory _$_RegisterDetail.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDetailFromJson(json);

  @override
  final String? name;
  @override
  final int? age;
  @override
  final Sex sex;
  @override
  final University? university;
  @override
  final Faculty? faculty;
  @override
  final Study? study;

  @override
  String toString() {
    return 'RegisterDetail(name: $name, age: $age, sex: $sex, university: $university, faculty: $faculty, study: $study)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.study, study) || other.study == study));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, age, sex, university, faculty, study);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDetailCopyWith<_$_RegisterDetail> get copyWith =>
      __$$_RegisterDetailCopyWithImpl<_$_RegisterDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDetailToJson(
      this,
    );
  }
}

abstract class _RegisterDetail implements RegisterDetail {
  const factory _RegisterDetail(
      {final String? name,
      final int? age,
      required final Sex sex,
      final University? university,
      final Faculty? faculty,
      final Study? study}) = _$_RegisterDetail;

  factory _RegisterDetail.fromJson(Map<String, dynamic> json) =
      _$_RegisterDetail.fromJson;

  @override
  String? get name;
  @override
  int? get age;
  @override
  Sex get sex;
  @override
  University? get university;
  @override
  Faculty? get faculty;
  @override
  Study? get study;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDetailCopyWith<_$_RegisterDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
