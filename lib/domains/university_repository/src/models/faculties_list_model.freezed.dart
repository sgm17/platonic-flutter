// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculties_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacultiesList _$FacultiesListFromJson(Map<String, dynamic> json) {
  return _FacultiesList.fromJson(json);
}

/// @nodoc
mixin _$FacultiesList {
  String get facultyName => throw _privateConstructorUsedError;
  List<Study> get studies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacultiesListCopyWith<FacultiesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultiesListCopyWith<$Res> {
  factory $FacultiesListCopyWith(
          FacultiesList value, $Res Function(FacultiesList) then) =
      _$FacultiesListCopyWithImpl<$Res, FacultiesList>;
  @useResult
  $Res call({String facultyName, List<Study> studies});
}

/// @nodoc
class _$FacultiesListCopyWithImpl<$Res, $Val extends FacultiesList>
    implements $FacultiesListCopyWith<$Res> {
  _$FacultiesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facultyName = null,
    Object? studies = null,
  }) {
    return _then(_value.copyWith(
      facultyName: null == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String,
      studies: null == studies
          ? _value.studies
          : studies // ignore: cast_nullable_to_non_nullable
              as List<Study>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FacultiesListCopyWith<$Res>
    implements $FacultiesListCopyWith<$Res> {
  factory _$$_FacultiesListCopyWith(
          _$_FacultiesList value, $Res Function(_$_FacultiesList) then) =
      __$$_FacultiesListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String facultyName, List<Study> studies});
}

/// @nodoc
class __$$_FacultiesListCopyWithImpl<$Res>
    extends _$FacultiesListCopyWithImpl<$Res, _$_FacultiesList>
    implements _$$_FacultiesListCopyWith<$Res> {
  __$$_FacultiesListCopyWithImpl(
      _$_FacultiesList _value, $Res Function(_$_FacultiesList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facultyName = null,
    Object? studies = null,
  }) {
    return _then(_$_FacultiesList(
      facultyName: null == facultyName
          ? _value.facultyName
          : facultyName // ignore: cast_nullable_to_non_nullable
              as String,
      studies: null == studies
          ? _value._studies
          : studies // ignore: cast_nullable_to_non_nullable
              as List<Study>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacultiesList implements _FacultiesList {
  const _$_FacultiesList(
      {required this.facultyName, required final List<Study> studies})
      : _studies = studies;

  factory _$_FacultiesList.fromJson(Map<String, dynamic> json) =>
      _$$_FacultiesListFromJson(json);

  @override
  final String facultyName;
  final List<Study> _studies;
  @override
  List<Study> get studies {
    if (_studies is EqualUnmodifiableListView) return _studies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studies);
  }

  @override
  String toString() {
    return 'FacultiesList(facultyName: $facultyName, studies: $studies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacultiesList &&
            (identical(other.facultyName, facultyName) ||
                other.facultyName == facultyName) &&
            const DeepCollectionEquality().equals(other._studies, _studies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, facultyName, const DeepCollectionEquality().hash(_studies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacultiesListCopyWith<_$_FacultiesList> get copyWith =>
      __$$_FacultiesListCopyWithImpl<_$_FacultiesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacultiesListToJson(
      this,
    );
  }

  @override
  Faculty convertToFaculty() {
    return Faculty(facultyName: facultyName);
  }
}

abstract class _FacultiesList implements FacultiesList {
  const factory _FacultiesList(
      {required final String facultyName,
      required final List<Study> studies}) = _$_FacultiesList;

  factory _FacultiesList.fromJson(Map<String, dynamic> json) =
      _$_FacultiesList.fromJson;

  @override
  String get facultyName;
  @override
  List<Study> get studies;
  @override
  @JsonKey(ignore: true)
  _$$_FacultiesListCopyWith<_$_FacultiesList> get copyWith =>
      throw _privateConstructorUsedError;
}
