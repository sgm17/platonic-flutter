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

/// @nodoc
mixin _$Study {
  int get id => throw _privateConstructorUsedError;
  String get studyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudyCopyWith<Study> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyCopyWith<$Res> {
  factory $StudyCopyWith(Study value, $Res Function(Study) then) =
      _$StudyCopyWithImpl<$Res, Study>;
  @useResult
  $Res call({int id, String studyName});
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
    Object? id = null,
    Object? studyName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studyName: null == studyName
          ? _value.studyName
          : studyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyCopyWith<$Res> implements $StudyCopyWith<$Res> {
  factory _$$_StudyCopyWith(_$_Study value, $Res Function(_$_Study) then) =
      __$$_StudyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String studyName});
}

/// @nodoc
class __$$_StudyCopyWithImpl<$Res> extends _$StudyCopyWithImpl<$Res, _$_Study>
    implements _$$_StudyCopyWith<$Res> {
  __$$_StudyCopyWithImpl(_$_Study _value, $Res Function(_$_Study) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studyName = null,
  }) {
    return _then(_$_Study(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studyName: null == studyName
          ? _value.studyName
          : studyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Study extends _Study {
  const _$_Study({required this.id, required this.studyName}) : super._();

  @override
  final int id;
  @override
  final String studyName;

  @override
  String toString() {
    return 'Study(id: $id, studyName: $studyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Study &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studyName, studyName) ||
                other.studyName == studyName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, studyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      __$$_StudyCopyWithImpl<_$_Study>(this, _$identity);
}

abstract class _Study extends Study {
  const factory _Study(
      {required final int id, required final String studyName}) = _$_Study;
  const _Study._() : super._();

  @override
  int get id;
  @override
  String get studyName;
  @override
  @JsonKey(ignore: true)
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      throw _privateConstructorUsedError;
}
