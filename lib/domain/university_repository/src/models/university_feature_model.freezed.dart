// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_feature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityFeature _$UniversityFeatureFromJson(Map<String, dynamic> json) {
  return _UniversityFeature.fromJson(json);
}

/// @nodoc
mixin _$UniversityFeature {
  String get type => throw _privateConstructorUsedError;
  University get properties => throw _privateConstructorUsedError;
  UniversityGeometry get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityFeatureCopyWith<UniversityFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityFeatureCopyWith<$Res> {
  factory $UniversityFeatureCopyWith(
          UniversityFeature value, $Res Function(UniversityFeature) then) =
      _$UniversityFeatureCopyWithImpl<$Res>;
  $Res call({String type, University properties, UniversityGeometry geometry});

  $UniversityCopyWith<$Res> get properties;
  $UniversityGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$UniversityFeatureCopyWithImpl<$Res>
    implements $UniversityFeatureCopyWith<$Res> {
  _$UniversityFeatureCopyWithImpl(this._value, this._then);

  final UniversityFeature _value;
  // ignore: unused_field
  final $Res Function(UniversityFeature) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as University,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as UniversityGeometry,
    ));
  }

  @override
  $UniversityCopyWith<$Res> get properties {
    return $UniversityCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value));
    });
  }

  @override
  $UniversityGeometryCopyWith<$Res> get geometry {
    return $UniversityGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$$_UniversityFeatureCopyWith<$Res>
    implements $UniversityFeatureCopyWith<$Res> {
  factory _$$_UniversityFeatureCopyWith(_$_UniversityFeature value,
          $Res Function(_$_UniversityFeature) then) =
      __$$_UniversityFeatureCopyWithImpl<$Res>;
  @override
  $Res call({String type, University properties, UniversityGeometry geometry});

  @override
  $UniversityCopyWith<$Res> get properties;
  @override
  $UniversityGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$_UniversityFeatureCopyWithImpl<$Res>
    extends _$UniversityFeatureCopyWithImpl<$Res>
    implements _$$_UniversityFeatureCopyWith<$Res> {
  __$$_UniversityFeatureCopyWithImpl(
      _$_UniversityFeature _value, $Res Function(_$_UniversityFeature) _then)
      : super(_value, (v) => _then(v as _$_UniversityFeature));

  @override
  _$_UniversityFeature get _value => super._value as _$_UniversityFeature;

  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_UniversityFeature(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      properties: properties == freezed
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as University,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as UniversityGeometry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityFeature implements _UniversityFeature {
  const _$_UniversityFeature(
      {required this.type, required this.properties, required this.geometry});

  factory _$_UniversityFeature.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityFeatureFromJson(json);

  @override
  final String type;
  @override
  final University properties;
  @override
  final UniversityGeometry geometry;

  @override
  String toString() {
    return 'UniversityFeature(type: $type, properties: $properties, geometry: $geometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityFeature &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            const DeepCollectionEquality().equals(other.geometry, geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(properties),
      const DeepCollectionEquality().hash(geometry));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityFeatureCopyWith<_$_UniversityFeature> get copyWith =>
      __$$_UniversityFeatureCopyWithImpl<_$_UniversityFeature>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityFeatureToJson(
      this,
    );
  }
}

abstract class _UniversityFeature implements UniversityFeature {
  const factory _UniversityFeature(
      {required final String type,
      required final University properties,
      required final UniversityGeometry geometry}) = _$_UniversityFeature;

  factory _UniversityFeature.fromJson(Map<String, dynamic> json) =
      _$_UniversityFeature.fromJson;

  @override
  String get type;
  @override
  University get properties;
  @override
  UniversityGeometry get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityFeatureCopyWith<_$_UniversityFeature> get copyWith =>
      throw _privateConstructorUsedError;
}
