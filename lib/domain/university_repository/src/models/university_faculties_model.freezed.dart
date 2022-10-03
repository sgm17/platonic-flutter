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

UniversityFaculties _$UniversityFacultiesFromJson(Map<String, dynamic> json) {
  return _UniversityFaculties.fromJson(json);
}

/// @nodoc
mixin _$UniversityFaculties {
  String get facultyName => throw _privateConstructorUsedError;
  List<UniversityStudy> get studies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityFacultiesCopyWith<UniversityFaculties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityFacultiesCopyWith<$Res> {
  factory $UniversityFacultiesCopyWith(
          UniversityFaculties value, $Res Function(UniversityFaculties) then) =
      _$UniversityFacultiesCopyWithImpl<$Res>;
  $Res call({String facultyName, List<UniversityStudy> studies});
}

/// @nodoc
class _$UniversityFacultiesCopyWithImpl<$Res>
    implements $UniversityFacultiesCopyWith<$Res> {
  _$UniversityFacultiesCopyWithImpl(this._value, this._then);

  final UniversityFaculties _value;
  // ignore: unused_field
  final $Res Function(UniversityFaculties) _then;

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
abstract class _$$_UniversityFacultiesCopyWith<$Res>
    implements $UniversityFacultiesCopyWith<$Res> {
  factory _$$_UniversityFacultiesCopyWith(_$_UniversityFaculties value,
          $Res Function(_$_UniversityFaculties) then) =
      __$$_UniversityFacultiesCopyWithImpl<$Res>;
  @override
  $Res call({String facultyName, List<UniversityStudy> studies});
}

/// @nodoc
class __$$_UniversityFacultiesCopyWithImpl<$Res>
    extends _$UniversityFacultiesCopyWithImpl<$Res>
    implements _$$_UniversityFacultiesCopyWith<$Res> {
  __$$_UniversityFacultiesCopyWithImpl(_$_UniversityFaculties _value,
      $Res Function(_$_UniversityFaculties) _then)
      : super(_value, (v) => _then(v as _$_UniversityFaculties));

  @override
  _$_UniversityFaculties get _value => super._value as _$_UniversityFaculties;

  @override
  $Res call({
    Object? facultyName = freezed,
    Object? studies = freezed,
  }) {
    return _then(_$_UniversityFaculties(
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
class _$_UniversityFaculties implements _UniversityFaculties {
  const _$_UniversityFaculties(
      {required this.facultyName, required final List<UniversityStudy> studies})
      : _studies = studies;

  factory _$_UniversityFaculties.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityFacultiesFromJson(json);

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
    return 'UniversityFaculties(facultyName: $facultyName, studies: $studies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityFaculties &&
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
  _$$_UniversityFacultiesCopyWith<_$_UniversityFaculties> get copyWith =>
      __$$_UniversityFacultiesCopyWithImpl<_$_UniversityFaculties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityFacultiesToJson(
      this,
    );
  }
}

abstract class _UniversityFaculties implements UniversityFaculties {
  const factory _UniversityFaculties(
      {required final String facultyName,
      required final List<UniversityStudy> studies}) = _$_UniversityFaculties;

  factory _UniversityFaculties.fromJson(Map<String, dynamic> json) =
      _$_UniversityFaculties.fromJson;

  @override
  String get facultyName;
  @override
  List<UniversityStudy> get studies;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityFacultiesCopyWith<_$_UniversityFaculties> get copyWith =>
      throw _privateConstructorUsedError;
}
