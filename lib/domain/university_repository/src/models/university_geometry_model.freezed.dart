// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_geometry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityGeometry _$UniversityGeometryFromJson(Map<String, dynamic> json) {
  return _UniversityGeometry.fromJson(json);
}

/// @nodoc
mixin _$UniversityGeometry {
  String get type => throw _privateConstructorUsedError;
  List<List<List<double>>> get coordinates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityGeometryCopyWith<UniversityGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityGeometryCopyWith<$Res> {
  factory $UniversityGeometryCopyWith(
          UniversityGeometry value, $Res Function(UniversityGeometry) then) =
      _$UniversityGeometryCopyWithImpl<$Res>;
  $Res call({String type, List<List<List<double>>> coordinates});
}

/// @nodoc
class _$UniversityGeometryCopyWithImpl<$Res>
    implements $UniversityGeometryCopyWith<$Res> {
  _$UniversityGeometryCopyWithImpl(this._value, this._then);

  final UniversityGeometry _value;
  // ignore: unused_field
  final $Res Function(UniversityGeometry) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityGeometryCopyWith<$Res>
    implements $UniversityGeometryCopyWith<$Res> {
  factory _$$_UniversityGeometryCopyWith(_$_UniversityGeometry value,
          $Res Function(_$_UniversityGeometry) then) =
      __$$_UniversityGeometryCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<List<List<double>>> coordinates});
}

/// @nodoc
class __$$_UniversityGeometryCopyWithImpl<$Res>
    extends _$UniversityGeometryCopyWithImpl<$Res>
    implements _$$_UniversityGeometryCopyWith<$Res> {
  __$$_UniversityGeometryCopyWithImpl(
      _$_UniversityGeometry _value, $Res Function(_$_UniversityGeometry) _then)
      : super(_value, (v) => _then(v as _$_UniversityGeometry));

  @override
  _$_UniversityGeometry get _value => super._value as _$_UniversityGeometry;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_UniversityGeometry(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityGeometry implements _UniversityGeometry {
  const _$_UniversityGeometry(
      {required this.type, required final List<List<List<double>>> coordinates})
      : _coordinates = coordinates;

  factory _$_UniversityGeometry.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityGeometryFromJson(json);

  @override
  final String type;
  final List<List<List<double>>> _coordinates;
  @override
  List<List<List<double>>> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'UniversityGeometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityGeometry &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityGeometryCopyWith<_$_UniversityGeometry> get copyWith =>
      __$$_UniversityGeometryCopyWithImpl<_$_UniversityGeometry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityGeometryToJson(
      this,
    );
  }
}

abstract class _UniversityGeometry implements UniversityGeometry {
  const factory _UniversityGeometry(
          {required final String type,
          required final List<List<List<double>>> coordinates}) =
      _$_UniversityGeometry;

  factory _UniversityGeometry.fromJson(Map<String, dynamic> json) =
      _$_UniversityGeometry.fromJson;

  @override
  String get type;
  @override
  List<List<List<double>>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityGeometryCopyWith<_$_UniversityGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}
