// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeatureModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @IconDataConverter()
  IconData get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeatureModelCopyWith<FeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureModelCopyWith<$Res> {
  factory $FeatureModelCopyWith(
          FeatureModel value, $Res Function(FeatureModel) then) =
      _$FeatureModelCopyWithImpl<$Res, FeatureModel>;
  @useResult
  $Res call({int id, String name, @IconDataConverter() IconData icon});
}

/// @nodoc
class _$FeatureModelCopyWithImpl<$Res, $Val extends FeatureModel>
    implements $FeatureModelCopyWith<$Res> {
  _$FeatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeatureModelCopyWith<$Res>
    implements $FeatureModelCopyWith<$Res> {
  factory _$$_FeatureModelCopyWith(
          _$_FeatureModel value, $Res Function(_$_FeatureModel) then) =
      __$$_FeatureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @IconDataConverter() IconData icon});
}

/// @nodoc
class __$$_FeatureModelCopyWithImpl<$Res>
    extends _$FeatureModelCopyWithImpl<$Res, _$_FeatureModel>
    implements _$$_FeatureModelCopyWith<$Res> {
  __$$_FeatureModelCopyWithImpl(
      _$_FeatureModel _value, $Res Function(_$_FeatureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$_FeatureModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_FeatureModel extends _FeatureModel {
  _$_FeatureModel(
      {required this.id,
      required this.name,
      @IconDataConverter() required this.icon})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  @IconDataConverter()
  final IconData icon;

  @override
  String toString() {
    return 'FeatureModel(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeatureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureModelCopyWith<_$_FeatureModel> get copyWith =>
      __$$_FeatureModelCopyWithImpl<_$_FeatureModel>(this, _$identity);
}

abstract class _FeatureModel extends FeatureModel {
  factory _FeatureModel(
      {required final int id,
      required final String name,
      @IconDataConverter() required final IconData icon}) = _$_FeatureModel;
  _FeatureModel._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  @IconDataConverter()
  IconData get icon;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureModelCopyWith<_$_FeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
