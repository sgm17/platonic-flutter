// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Study _$StudyFromJson(Map<String, dynamic> json) {
  return _Study.fromJson(json);
}

/// @nodoc
mixin _$Study {
  String get name => throw _privateConstructorUsedError;
  int get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyCopyWith<Study> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyCopyWith<$Res> {
  factory $StudyCopyWith(Study value, $Res Function(Study) then) =
      _$StudyCopyWithImpl<$Res, Study>;
  @useResult
  $Res call({String name, int courses});
}

/// @nodoc
class _$StudyCopyWithImpl<$Res, $Val extends Study>
    implements $StudyCopyWith<$Res> {
  _$StudyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyCopyWith<$Res> implements $StudyCopyWith<$Res> {
  factory _$$_StudyCopyWith(_$_Study value, $Res Function(_$_Study) then) =
      __$$_StudyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int courses});
}

/// @nodoc
class __$$_StudyCopyWithImpl<$Res> extends _$StudyCopyWithImpl<$Res, _$_Study>
    implements _$$_StudyCopyWith<$Res> {
  __$$_StudyCopyWithImpl(_$_Study _value, $Res Function(_$_Study) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? courses = null,
  }) {
    return _then(_$_Study(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Study implements _Study {
  const _$_Study({required this.name, required this.courses});

  factory _$_Study.fromJson(Map<String, dynamic> json) =>
      _$$_StudyFromJson(json);

  @override
  final String name;
  @override
  final int courses;

  @override
  String toString() {
    return 'Study(name: $name, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Study &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.courses, courses) || other.courses == courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, courses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      __$$_StudyCopyWithImpl<_$_Study>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyToJson(
      this,
    );
  }
}

abstract class _Study implements Study {
  const factory _Study(
      {required final String name, required final int courses}) = _$_Study;

  factory _Study.fromJson(Map<String, dynamic> json) = _$_Study.fromJson;

  @override
  String get name;
  @override
  int get courses;
  @override
  @JsonKey(ignore: true)
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      throw _privateConstructorUsedError;
}
