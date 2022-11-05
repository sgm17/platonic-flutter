// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_faculties_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityFaculty _$UniversityFacultyFromJson(Map<String, dynamic> json) {
  return _UniversityFaculty.fromJson(json);
}

/// @nodoc
mixin _$UniversityFaculty {
  String get facultyName => throw _privateConstructorUsedError;
  List<UniversityStudy> get studies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityFacultyCopyWith<UniversityFaculty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityFacultyCopyWith<$Res> {
  factory $UniversityFacultyCopyWith(
          UniversityFaculty value, $Res Function(UniversityFaculty) then) =
      _$UniversityFacultyCopyWithImpl<$Res>;
  $Res call({String facultyName, List<UniversityStudy> studies});
}

/// @nodoc
class _$UniversityFacultyCopyWithImpl<$Res>
    implements $UniversityFacultyCopyWith<$Res> {
  _$UniversityFacultyCopyWithImpl(this._value, this._then);

  final UniversityFaculty _value;
  // ignore: unused_field
  final $Res Function(UniversityFaculty) _then;

  @override
  $Res call({
    Object? facultyName = freezed,
    Object? studies = freezed,
  }) {
    return _then(_value.copyWith(
      facultyName: facultyName == freezed
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String,
      studies: studies == freezed
          ? _value.studies
          : studies // ignore: cast_nullable_to_non_nullable
              as List<UniversityStudy>,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityFacultyCopyWith<$Res>
    implements $UniversityFacultyCopyWith<$Res> {
  factory _$$_UniversityFacultyCopyWith(_$_UniversityFaculty value,
          $Res Function(_$_UniversityFaculty) then) =
      __$$_UniversityFacultyCopyWithImpl<$Res>;
  @override
  $Res call({String facultyName, List<UniversityStudy> studies});
}

/// @nodoc
class __$$_UniversityFacultyCopyWithImpl<$Res>
    extends _$UniversityFacultyCopyWithImpl<$Res>
    implements _$$_UniversityFacultyCopyWith<$Res> {
  __$$_UniversityFacultyCopyWithImpl(
      _$_UniversityFaculty _value, $Res Function(_$_UniversityFaculty) _then)
      : super(_value, (v) => _then(v as _$_UniversityFaculty));

  @override
  _$_UniversityFaculty get _value => super._value as _$_UniversityFaculty;

  @override
  $Res call({
    Object? facultyName = freezed,
    Object? studies = freezed,
  }) {
    return _then(_$_UniversityFaculty(
      facultyName: facultyName == freezed
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String,
      studies: studies == freezed
          ? _value._studies
          : studies // ignore: cast_nullable_to_non_nullable
              as List<UniversityStudy>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityFaculty implements _UniversityFaculty {
  const _$_UniversityFaculty(
      {required this.facultyName, required final List<UniversityStudy> studies})
      : _studies = studies;

  factory _$_UniversityFaculty.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityFacultyFromJson(json);

  @override
  final String facultyName;
  final List<UniversityStudy> _studies;
  @override
  List<UniversityStudy> get studies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studies);
  }

  @override
  String toString() {
    return 'UniversityFaculty(facultyName: $facultyName, studies: $studies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityFaculty &&
            const DeepCollectionEquality()
                .equals(other.facultyName, facultyName) &&
            const DeepCollectionEquality().equals(other._studies, _studies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(facultyName),
      const DeepCollectionEquality().hash(_studies));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityFacultyCopyWith<_$_UniversityFaculty> get copyWith =>
      __$$_UniversityFacultyCopyWithImpl<_$_UniversityFaculty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityFacultyToJson(
      this,
    );
  }
}

abstract class _UniversityFaculty implements UniversityFaculty {
  const factory _UniversityFaculty(
      {required final String facultyName,
      required final List<UniversityStudy> studies}) = _$_UniversityFaculty;

  factory _UniversityFaculty.fromJson(Map<String, dynamic> json) =
      _$_UniversityFaculty.fromJson;

  @override
  String get facultyName;
  @override
  List<UniversityStudy> get studies;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityFacultyCopyWith<_$_UniversityFaculty> get copyWith =>
      throw _privateConstructorUsedError;
}
