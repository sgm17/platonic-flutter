// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transport _$$_TransportFromJson(Map<String, dynamic> json) => _$_Transport(
      name: json['name'] as String,
      directionName: json['directionName'] as String?,
      destinationName: json['destinationName'] as String?,
      durationMinutes: json['durationMinutes'] as int,
      stops: json['stops'] as int?,
      acronym: json['acronym'] as String?,
      vehicle: $enumDecode(_$VehicleEnumMap, json['vehicle']),
      points: (json['points'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      color: _$JsonConverterFromJson<int, Color>(
          json['color'], const ColorSerialiser().fromJson),
    );

Map<String, dynamic> _$$_TransportToJson(_$_Transport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'directionName': instance.directionName,
      'destinationName': instance.destinationName,
      'durationMinutes': instance.durationMinutes,
      'stops': instance.stops,
      'acronym': instance.acronym,
      'vehicle': _$VehicleEnumMap[instance.vehicle]!,
      'points': instance.points,
      'color': _$JsonConverterToJson<int, Color>(
          instance.color, const ColorSerialiser().toJson),
    };

const _$VehicleEnumMap = {
  Vehicle.walking: 'walking',
  Vehicle.train: 'train',
  Vehicle.underground: 'underground',
  Vehicle.bus: 'bus',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
