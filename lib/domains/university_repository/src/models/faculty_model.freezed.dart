// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Faculty {
  int get id => throw _privateConstructorUsedError;
  String? get facultyName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FacultyCopyWith<Faculty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyCopyWith<$Res> {
  factory $FacultyCopyWith(Faculty value, $Res Function(Faculty) then) =
      _$FacultyCopyWithImpl<$Res, Faculty>;
  @useResult
  $Res call({int id, String? facultyName});
}

/// @nodoc
class _$FacultyCopyWithImpl<$Res, $Val extends Faculty>
    implements $FacultyCopyWith<$Res> {
  _$FacultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? facultyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      facultyName: freezed == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FacultyCopyWith<$Res> implements $FacultyCopyWith<$Res> {
  factory _$$_FacultyCopyWith(
          _$_Faculty value, $Res Function(_$_Faculty) then) =
      __$$_FacultyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? facultyName});
}

/// @nodoc
class __$$_FacultyCopyWithImpl<$Res>
    extends _$FacultyCopyWithImpl<$Res, _$_Faculty>
    implements _$$_FacultyCopyWith<$Res> {
  __$$_FacultyCopyWithImpl(_$_Faculty _value, $Res Function(_$_Faculty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? facultyName = freezed,
  }) {
    return _then(_$_Faculty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      facultyName: freezed == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Faculty extends _Faculty {
  const _$_Faculty({required this.id, required this.facultyName}) : super._();

  @override
  final int id;
  @override
  final String? facultyName;

  @override
  String toString() {
    return 'Faculty(id: $id, facultyName: $facultyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Faculty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.facultyName, facultyName) ||
                other.facultyName == facultyName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, facultyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacultyCopyWith<_$_Faculty> get copyWith =>
      __$$_FacultyCopyWithImpl<_$_Faculty>(this, _$identity);
}

abstract class _Faculty extends Faculty {
  const factory _Faculty(
      {required final int id, required final String? facultyName}) = _$_Faculty;
  const _Faculty._() : super._();

  @override
  int get id;
  @override
  String? get facultyName;
  @override
  @JsonKey(ignore: true)
  _$$_FacultyCopyWith<_$_Faculty> get copyWith =>
      throw _privateConstructorUsedError;
}
