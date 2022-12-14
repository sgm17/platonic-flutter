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
  String get name => throw _privateConstructorUsedError;
  String? get directionName => throw _privateConstructorUsedError;
  String? get destinationName => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  int? get stops => throw _privateConstructorUsedError;
  String? get acronym => throw _privateConstructorUsedError;
  Vehicle get vehicle => throw _privateConstructorUsedError;
  List<List<double>> get points => throw _privateConstructorUsedError;
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
      {String name,
      String? directionName,
      String? destinationName,
      int durationMinutes,
      int? stops,
      String? acronym,
      Vehicle vehicle,
      List<List<double>> points,
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
    Object? name = freezed,
    Object? directionName = freezed,
    Object? destinationName = freezed,
    Object? durationMinutes = freezed,
    Object? stops = freezed,
    Object? acronym = freezed,
    Object? vehicle = freezed,
    Object? points = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      directionName: directionName == freezed
          ? _value.directionName
          : directionName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationName: destinationName == freezed
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: durationMinutes == freezed
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      stops: stops == freezed
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as int?,
      acronym: acronym == freezed
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
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
      {String name,
      String? directionName,
      String? destinationName,
      int durationMinutes,
      int? stops,
      String? acronym,
      Vehicle vehicle,
      List<List<double>> points,
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
    Object? name = freezed,
    Object? directionName = freezed,
    Object? destinationName = freezed,
    Object? durationMinutes = freezed,
    Object? stops = freezed,
    Object? acronym = freezed,
    Object? vehicle = freezed,
    Object? points = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Transport(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      directionName: directionName == freezed
          ? _value.directionName
          : directionName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationName: destinationName == freezed
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMinutes: durationMinutes == freezed
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      stops: stops == freezed
          ? _value.stops
          : stops // ignore: cast_nullable_to_non_nullable
              as int?,
      acronym: acronym == freezed
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
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
      {required this.name,
      this.directionName,
      this.destinationName,
      required this.durationMinutes,
      this.stops,
      this.acronym,
      required this.vehicle,
      required final List<List<double>> points,
      @ColorSerialiser() this.color})
      : _points = points;

  factory _$_Transport.fromJson(Map<String, dynamic> json) =>
      _$$_TransportFromJson(json);

  @override
  final String name;
  @override
  final String? directionName;
  @override
  final String? destinationName;
  @override
  final int durationMinutes;
  @override
  final int? stops;
  @override
  final String? acronym;
  @override
  final Vehicle vehicle;
  final List<List<double>> _points;
  @override
  List<List<double>> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @ColorSerialiser()
  final Color? color;

  @override
  String toString() {
    return 'Transport(name: $name, directionName: $directionName, destinationName: $destinationName, durationMinutes: $durationMinutes, stops: $stops, acronym: $acronym, vehicle: $vehicle, points: $points, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transport &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.directionName, directionName) &&
            const DeepCollectionEquality()
                .equals(other.destinationName, destinationName) &&
            const DeepCollectionEquality()
                .equals(other.durationMinutes, durationMinutes) &&
            const DeepCollectionEquality().equals(other.stops, stops) &&
            const DeepCollectionEquality().equals(other.acronym, acronym) &&
            const DeepCollectionEquality().equals(other.vehicle, vehicle) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(directionName),
      const DeepCollectionEquality().hash(destinationName),
      const DeepCollectionEquality().hash(durationMinutes),
      const DeepCollectionEquality().hash(stops),
      const DeepCollectionEquality().hash(acronym),
      const DeepCollectionEquality().hash(vehicle),
      const DeepCollectionEquality().hash(_points),
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
      {required final String name,
      final String? directionName,
      final String? destinationName,
      required final int durationMinutes,
      final int? stops,
      final String? acronym,
      required final Vehicle vehicle,
      required final List<List<double>> points,
      @ColorSerialiser() final Color? color}) = _$_Transport;

  factory _Transport.fromJson(Map<String, dynamic> json) =
      _$_Transport.fromJson;

  @override
  String get name;
  @override
  String? get directionName;
  @override
  String? get destinationName;
  @override
  int get durationMinutes;
  @override
  int? get stops;
  @override
  String? get acronym;
  @override
  Vehicle get vehicle;
  @override
  List<List<double>> get points;
  @override
  @ColorSerialiser()
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      throw _privateConstructorUsedError;
}
