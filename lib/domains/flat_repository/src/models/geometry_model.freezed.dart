// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geometry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeometryModel {
  List<double> get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeometryModelCopyWith<GeometryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryModelCopyWith<$Res> {
  factory $GeometryModelCopyWith(
          GeometryModel value, $Res Function(GeometryModel) then) =
      _$GeometryModelCopyWithImpl<$Res, GeometryModel>;
  @useResult
  $Res call({List<double> coordinates});
}

/// @nodoc
class _$GeometryModelCopyWithImpl<$Res, $Val extends GeometryModel>
    implements $GeometryModelCopyWith<$Res> {
  _$GeometryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeometryModelCopyWith<$Res>
    implements $GeometryModelCopyWith<$Res> {
  factory _$$_GeometryModelCopyWith(
          _$_GeometryModel value, $Res Function(_$_GeometryModel) then) =
      __$$_GeometryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> coordinates});
}

/// @nodoc
class __$$_GeometryModelCopyWithImpl<$Res>
    extends _$GeometryModelCopyWithImpl<$Res, _$_GeometryModel>
    implements _$$_GeometryModelCopyWith<$Res> {
  __$$_GeometryModelCopyWithImpl(
      _$_GeometryModel _value, $Res Function(_$_GeometryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_$_GeometryModel(
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$_GeometryModel extends _GeometryModel {
  _$_GeometryModel({required final List<double> coordinates})
      : _coordinates = coordinates,
        super._();

  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'GeometryModel(coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeometryModel &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeometryModelCopyWith<_$_GeometryModel> get copyWith =>
      __$$_GeometryModelCopyWithImpl<_$_GeometryModel>(this, _$identity);
}

abstract class _GeometryModel extends GeometryModel {
  factory _GeometryModel({required final List<double> coordinates}) =
      _$_GeometryModel;
  _GeometryModel._() : super._();

  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_GeometryModelCopyWith<_$_GeometryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
