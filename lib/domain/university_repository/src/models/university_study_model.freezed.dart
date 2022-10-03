// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_study_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityStudy _$UniversityStudyFromJson(Map<String, dynamic> json) {
  return _UniversityStudy.fromJson(json);
}

/// @nodoc
mixin _$UniversityStudy {
  String get name => throw _privateConstructorUsedError;
  int get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityStudyCopyWith<UniversityStudy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityStudyCopyWith<$Res> {
  factory $UniversityStudyCopyWith(
          UniversityStudy value, $Res Function(UniversityStudy) then) =
      _$UniversityStudyCopyWithImpl<$Res>;
  $Res call({String name, int courses});
}

/// @nodoc
class _$UniversityStudyCopyWithImpl<$Res>
    implements $UniversityStudyCopyWith<$Res> {
  _$UniversityStudyCopyWithImpl(this._value, this._then);

  final UniversityStudy _value;
  // ignore: unused_field
  final $Res Function(UniversityStudy) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityStudyCopyWith<$Res>
    implements $UniversityStudyCopyWith<$Res> {
  factory _$$_UniversityStudyCopyWith(
          _$_UniversityStudy value, $Res Function(_$_UniversityStudy) then) =
      __$$_UniversityStudyCopyWithImpl<$Res>;
  @override
  $Res call({String name, int courses});
}

/// @nodoc
class __$$_UniversityStudyCopyWithImpl<$Res>
    extends _$UniversityStudyCopyWithImpl<$Res>
    implements _$$_UniversityStudyCopyWith<$Res> {
  __$$_UniversityStudyCopyWithImpl(
      _$_UniversityStudy _value, $Res Function(_$_UniversityStudy) _then)
      : super(_value, (v) => _then(v as _$_UniversityStudy));

  @override
  _$_UniversityStudy get _value => super._value as _$_UniversityStudy;

  @override
  $Res call({
    Object? name = freezed,
    Object? courses = freezed,
  }) {
    return _then(_$_UniversityStudy(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityStudy implements _UniversityStudy {
  const _$_UniversityStudy({required this.name, required this.courses});

  factory _$_UniversityStudy.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityStudyFromJson(json);

  @override
  final String name;
  @override
  final int courses;

  @override
  String toString() {
    return 'UniversityStudy(name: $name, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityStudy &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.courses, courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(courses));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityStudyCopyWith<_$_UniversityStudy> get copyWith =>
      __$$_UniversityStudyCopyWithImpl<_$_UniversityStudy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityStudyToJson(
      this,
    );
  }
}

abstract class _UniversityStudy implements UniversityStudy {
  const factory _UniversityStudy(
      {required final String name,
      required final int courses}) = _$_UniversityStudy;

  factory _UniversityStudy.fromJson(Map<String, dynamic> json) =
      _$_UniversityStudy.fromJson;

  @override
  String get name;
  @override
  int get courses;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityStudyCopyWith<_$_UniversityStudy> get copyWith =>
      throw _privateConstructorUsedError;
}
