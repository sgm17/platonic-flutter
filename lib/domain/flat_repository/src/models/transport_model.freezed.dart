// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transport _$TransportFromJson(Map<String, dynamic> json) {
  return _Transport.fromJson(json);
}

/// @nodoc
mixin _$Transport {
  int get universityId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get acronym => throw _privateConstructorUsedError;
  Vehicle get vehicle => throw _privateConstructorUsedError;
  List<double> get transportCoordinates => throw _privateConstructorUsedError;
  int? get frequencyTransportMinutes => throw _privateConstructorUsedError;
  @ColorSerialiser()
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportCopyWith<Transport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportCopyWith<$Res> {
  factory $TransportCopyWith(Transport value, $Res Function(Transport) then) =
      _$TransportCopyWithImpl<$Res>;
  $Res call(
      {int universityId,
      String name,
      String? acronym,
      Vehicle vehicle,
      List<double> transportCoordinates,
      int? frequencyTransportMinutes,
      @ColorSerialiser() Color? color});
}

/// @nodoc
class _$TransportCopyWithImpl<$Res> implements $TransportCopyWith<$Res> {
  _$TransportCopyWithImpl(this._value, this._then);

  final Transport _value;
  // ignore: unused_field
  final $Res Function(Transport) _then;

  @override
  $Res call({
    Object? universityId = freezed,
    Object? name = freezed,
    Object? acronym = freezed,
    Object? vehicle = freezed,
    Object? transportCoordinates = freezed,
    Object? frequencyTransportMinutes = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      acronym: acronym == freezed
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      transportCoordinates: transportCoordinates == freezed
          ? _value.transportCoordinates
          : transportCoordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      frequencyTransportMinutes: frequencyTransportMinutes == freezed
          ? _value.frequencyTransportMinutes
          : frequencyTransportMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
abstract class _$$_TransportCopyWith<$Res> implements $TransportCopyWith<$Res> {
  factory _$$_TransportCopyWith(
          _$_Transport value, $Res Function(_$_Transport) then) =
      __$$_TransportCopyWithImpl<$Res>;
  @override
  $Res call(
      {int universityId,
      String name,
      String? acronym,
      Vehicle vehicle,
      List<double> transportCoordinates,
      int? frequencyTransportMinutes,
      @ColorSerialiser() Color? color});
}

/// @nodoc
class __$$_TransportCopyWithImpl<$Res> extends _$TransportCopyWithImpl<$Res>
    implements _$$_TransportCopyWith<$Res> {
  __$$_TransportCopyWithImpl(
      _$_Transport _value, $Res Function(_$_Transport) _then)
      : super(_value, (v) => _then(v as _$_Transport));

  @override
  _$_Transport get _value => super._value as _$_Transport;

  @override
  $Res call({
    Object? universityId = freezed,
    Object? name = freezed,
    Object? acronym = freezed,
    Object? vehicle = freezed,
    Object? transportCoordinates = freezed,
    Object? frequencyTransportMinutes = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Transport(
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      acronym: acronym == freezed
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      transportCoordinates: transportCoordinates == freezed
          ? _value._transportCoordinates
          : transportCoordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      frequencyTransportMinutes: frequencyTransportMinutes == freezed
          ? _value.frequencyTransportMinutes
          : frequencyTransportMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transport implements _Transport {
  const _$_Transport(
      {required this.universityId,
      required this.name,
      this.acronym,
      required this.vehicle,
      required final List<double> transportCoordinates,
      this.frequencyTransportMinutes,
      @ColorSerialiser() this.color})
      : _transportCoordinates = transportCoordinates;

  factory _$_Transport.fromJson(Map<String, dynamic> json) =>
      _$$_TransportFromJson(json);

  @override
  final int universityId;
  @override
  final String name;
  @override
  final String? acronym;
  @override
  final Vehicle vehicle;
  final List<double> _transportCoordinates;
  @override
  List<double> get transportCoordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportCoordinates);
  }

  @override
  final int? frequencyTransportMinutes;
  @override
  @ColorSerialiser()
  final Color? color;

  @override
  String toString() {
    return 'Transport(universityId: $universityId, name: $name, acronym: $acronym, vehicle: $vehicle, transportCoordinates: $transportCoordinates, frequencyTransportMinutes: $frequencyTransportMinutes, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transport &&
            const DeepCollectionEquality()
                .equals(other.universityId, universityId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.acronym, acronym) &&
            const DeepCollectionEquality().equals(other.vehicle, vehicle) &&
            const DeepCollectionEquality()
                .equals(other._transportCoordinates, _transportCoordinates) &&
            const DeepCollectionEquality().equals(
                other.frequencyTransportMinutes, frequencyTransportMinutes) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(universityId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(acronym),
      const DeepCollectionEquality().hash(vehicle),
      const DeepCollectionEquality().hash(_transportCoordinates),
      const DeepCollectionEquality().hash(frequencyTransportMinutes),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      __$$_TransportCopyWithImpl<_$_Transport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportToJson(
      this,
    );
  }
}

abstract class _Transport implements Transport {
  const factory _Transport(
      {required final int universityId,
      required final String name,
      final String? acronym,
      required final Vehicle vehicle,
      required final List<double> transportCoordinates,
      final int? frequencyTransportMinutes,
      @ColorSerialiser() final Color? color}) = _$_Transport;

  factory _Transport.fromJson(Map<String, dynamic> json) =
      _$_Transport.fromJson;

  @override
  int get universityId;
  @override
  String get name;
  @override
  String? get acronym;
  @override
  Vehicle get vehicle;
  @override
  List<double> get transportCoordinates;
  @override
  int? get frequencyTransportMinutes;
  @override
  @ColorSerialiser()
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      throw _privateConstructorUsedError;
}
