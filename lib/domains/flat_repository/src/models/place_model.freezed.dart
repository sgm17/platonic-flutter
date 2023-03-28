// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceModel {
  List<double> get geometry => throw _privateConstructorUsedError;
  PropertyModel get properties => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
          PlaceModel value, $Res Function(PlaceModel) then) =
      _$PlaceModelCopyWithImpl<$Res, PlaceModel>;
  @useResult
  $Res call({List<double> geometry, PropertyModel properties});

  $PropertyModelCopyWith<$Res> get properties;
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res, $Val extends PlaceModel>
    implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = null,
    Object? properties = null,
  }) {
    return _then(_value.copyWith(
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as List<double>,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyModelCopyWith<$Res> get properties {
    return $PropertyModelCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceModelCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$$_PlaceModelCopyWith(
          _$_PlaceModel value, $Res Function(_$_PlaceModel) then) =
      __$$_PlaceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> geometry, PropertyModel properties});

  @override
  $PropertyModelCopyWith<$Res> get properties;
}

/// @nodoc
class __$$_PlaceModelCopyWithImpl<$Res>
    extends _$PlaceModelCopyWithImpl<$Res, _$_PlaceModel>
    implements _$$_PlaceModelCopyWith<$Res> {
  __$$_PlaceModelCopyWithImpl(
      _$_PlaceModel _value, $Res Function(_$_PlaceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = null,
    Object? properties = null,
  }) {
    return _then(_$_PlaceModel(
      geometry: null == geometry
          ? _value._geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as List<double>,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
    ));
  }
}

/// @nodoc

class _$_PlaceModel extends _PlaceModel {
  _$_PlaceModel(
      {required final List<double> geometry, required this.properties})
      : _geometry = geometry,
        super._();

  final List<double> _geometry;
  @override
  List<double> get geometry {
    if (_geometry is EqualUnmodifiableListView) return _geometry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geometry);
  }

  @override
  final PropertyModel properties;

  @override
  String toString() {
    return 'PlaceModel(geometry: $geometry, properties: $properties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceModel &&
            const DeepCollectionEquality().equals(other._geometry, _geometry) &&
            (identical(other.properties, properties) ||
                other.properties == properties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_geometry), properties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceModelCopyWith<_$_PlaceModel> get copyWith =>
      __$$_PlaceModelCopyWithImpl<_$_PlaceModel>(this, _$identity);
}

abstract class _PlaceModel extends PlaceModel {
  factory _PlaceModel(
      {required final List<double> geometry,
      required final PropertyModel properties}) = _$_PlaceModel;
  _PlaceModel._() : super._();

  @override
  List<double> get geometry;
  @override
  PropertyModel get properties;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceModelCopyWith<_$_PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
