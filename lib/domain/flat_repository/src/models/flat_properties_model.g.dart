// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat_properties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlatProperties _$$_FlatPropertiesFromJson(Map<String, dynamic> json) =>
    _$_FlatProperties(
      builtMeters: json['builtMeters'] as int,
      utilMeters: json['utilMeters'] as int?,
      rooms: json['rooms'] as int?,
      bathrooms: json['bathrooms'] as int,
      balcony: json['balcony'] as bool,
      fittedWardrobes: json['fittedWardrobes'] as bool,
      flatOrientation: (json['flatOrientation'] as List<dynamic>)
          .map((e) => $enumDecode(_$FlatOrientationEnumMap, e))
          .toList(),
      disposition: $enumDecode(_$DispositionEnumMap, json['disposition']),
      furnished: json['furnished'] as bool,
      equippedKitchen: json['equippedKitchen'] as bool,
      heating: json['heating'] as bool,
      heatingType:
          $enumDecodeNullable(_$HeatingTypeEnumMap, json['heatingType']),
      floorLocation: $enumDecode(_$FloorLocationEnumMap, json['floorLocation']),
      floor: json['floor'] as int?,
      elevator: json['elevator'] as bool,
      airConditioning: json['airConditioning'] as bool,
      terrace: json['terrace'] as bool,
      swimmingPool: json['swimmingPool'] as bool,
      storageRoom: json['storageRoom'] as bool,
      garage: json['garage'] as bool,
      greenZones: json['greenZones'] as bool,
      builtYear: json['builtYear'] as int?,
      consumption: $enumDecode(_$EnergyCertificateEnumMap, json['consumption']),
      emissions: $enumDecode(_$EnergyCertificateEnumMap, json['emissions']),
      consumptionPerYear: json['consumptionPerYear'] as int?,
      emissionsPerYear: json['emissionsPerYear'] as int?,
    );

Map<String, dynamic> _$$_FlatPropertiesToJson(_$_FlatProperties instance) =>
    <String, dynamic>{
      'builtMeters': instance.builtMeters,
      'utilMeters': instance.utilMeters,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'balcony': instance.balcony,
      'fittedWardrobes': instance.fittedWardrobes,
      'flatOrientation': instance.flatOrientation
          .map((e) => _$FlatOrientationEnumMap[e]!)
          .toList(),
      'disposition': _$DispositionEnumMap[instance.disposition]!,
      'furnished': instance.furnished,
      'equippedKitchen': instance.equippedKitchen,
      'heating': instance.heating,
      'heatingType': _$HeatingTypeEnumMap[instance.heatingType],
      'floorLocation': _$FloorLocationEnumMap[instance.floorLocation]!,
      'floor': instance.floor,
      'elevator': instance.elevator,
      'airConditioning': instance.airConditioning,
      'terrace': instance.terrace,
      'swimmingPool': instance.swimmingPool,
      'storageRoom': instance.storageRoom,
      'garage': instance.garage,
      'greenZones': instance.greenZones,
      'builtYear': instance.builtYear,
      'consumption': _$EnergyCertificateEnumMap[instance.consumption]!,
      'emissions': _$EnergyCertificateEnumMap[instance.emissions]!,
      'consumptionPerYear': instance.consumptionPerYear,
      'emissionsPerYear': instance.emissionsPerYear,
    };

const _$FlatOrientationEnumMap = {
  FlatOrientation.north: 'north',
  FlatOrientation.est: 'est',
  FlatOrientation.west: 'west',
  FlatOrientation.south: 'south',
};

const _$DispositionEnumMap = {
  Disposition.inside: 'inside',
  Disposition.exterior: 'exterior',
};

const _$HeatingTypeEnumMap = {
  HeatingType.naturalGas: 'naturalGas',
  HeatingType.gasoil: 'gasoil',
  HeatingType.none: 'none',
};

const _$FloorLocationEnumMap = {
  FloorLocation.low: 'low',
  FloorLocation.attic: 'attic',
  FloorLocation.floor: 'floor',
};

const _$EnergyCertificateEnumMap = {
  EnergyCertificate.a: 'a',
  EnergyCertificate.b: 'b',
  EnergyCertificate.c: 'c',
  EnergyCertificate.d: 'd',
  EnergyCertificate.e: 'e',
  EnergyCertificate.f: 'f',
  EnergyCertificate.g: 'g',
  EnergyCertificate.inProcess: 'inProcess',
  EnergyCertificate.notIndicated: 'notIndicated',
};
