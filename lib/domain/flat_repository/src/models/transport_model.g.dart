// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transport _$$_TransportFromJson(Map<String, dynamic> json) => _$_Transport(
      universityId: json['universityId'] as int,
      name: json['name'] as String,
      acronym: json['acronym'] as String?,
      vehicle: $enumDecode(_$VehicleEnumMap, json['vehicle']),
      transportCoordinates: (json['transportCoordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      frequencyTransportMinutes: json['frequencyTransportMinutes'] as int?,
      color: _$JsonConverterFromJson<int, Color>(
          json['color'], const ColorSerialiser().fromJson),
    );

Map<String, dynamic> _$$_TransportToJson(_$_Transport instance) =>
    <String, dynamic>{
      'universityId': instance.universityId,
      'name': instance.name,
      'acronym': instance.acronym,
      'vehicle': _$VehicleEnumMap[instance.vehicle]!,
      'transportCoordinates': instance.transportCoordinates,
      'frequencyTransportMinutes': instance.frequencyTransportMinutes,
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
