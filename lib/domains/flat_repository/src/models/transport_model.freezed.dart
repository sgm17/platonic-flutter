// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransportModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @IconDataConverter()
  IconData get icon => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  University get university => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransportModelCopyWith<TransportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportModelCopyWith<$Res> {
  factory $TransportModelCopyWith(
          TransportModel value, $Res Function(TransportModel) then) =
      _$TransportModelCopyWithImpl<$Res, TransportModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @IconDataConverter() IconData icon,
      int minutes,
      University university});

  $UniversityCopyWith<$Res> get university;
}

/// @nodoc
class _$TransportModelCopyWithImpl<$Res, $Val extends TransportModel>
    implements $TransportModelCopyWith<$Res> {
  _$TransportModelCopyWithImpl(this._value, this._then);

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
    Object? minutes = null,
    Object? university = null,
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
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UniversityCopyWith<$Res> get university {
    return $UniversityCopyWith<$Res>(_value.university, (value) {
      return _then(_value.copyWith(university: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransportModelCopyWith<$Res>
    implements $TransportModelCopyWith<$Res> {
  factory _$$_TransportModelCopyWith(
          _$_TransportModel value, $Res Function(_$_TransportModel) then) =
      __$$_TransportModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @IconDataConverter() IconData icon,
      int minutes,
      University university});

  @override
  $UniversityCopyWith<$Res> get university;
}

/// @nodoc
class __$$_TransportModelCopyWithImpl<$Res>
    extends _$TransportModelCopyWithImpl<$Res, _$_TransportModel>
    implements _$$_TransportModelCopyWith<$Res> {
  __$$_TransportModelCopyWithImpl(
      _$_TransportModel _value, $Res Function(_$_TransportModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? minutes = null,
    Object? university = null,
  }) {
    return _then(_$_TransportModel(
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
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
    ));
  }
}

/// @nodoc

class _$_TransportModel extends _TransportModel {
  _$_TransportModel(
      {required this.id,
      required this.name,
      @IconDataConverter() required this.icon,
      required this.minutes,
      required this.university})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  @IconDataConverter()
  final IconData icon;
  @override
  final int minutes;
  @override
  final University university;

  @override
  String toString() {
    return 'TransportModel(id: $id, name: $name, icon: $icon, minutes: $minutes, university: $university)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.university, university) ||
                other.university == university));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, icon, minutes, university);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportModelCopyWith<_$_TransportModel> get copyWith =>
      __$$_TransportModelCopyWithImpl<_$_TransportModel>(this, _$identity);
}

abstract class _TransportModel extends TransportModel {
  factory _TransportModel(
      {required final int id,
      required final String name,
      @IconDataConverter() required final IconData icon,
      required final int minutes,
      required final University university}) = _$_TransportModel;
  _TransportModel._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  @IconDataConverter()
  IconData get icon;
  @override
  int get minutes;
  @override
  University get university;
  @override
  @JsonKey(ignore: true)
  _$$_TransportModelCopyWith<_$_TransportModel> get copyWith =>
      throw _privateConstructorUsedError;
}
