// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceModel _$PlaceModelFromJson(Map json) => $checkedCreate(
      'PlaceModel',
      json,
      ($checkedConvert) {
        final val = PlaceModel(
          geometry: $checkedConvert(
              'geometry',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
          properties: $checkedConvert(
              'properties',
              (v) =>
                  PropertyModel.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$PlaceModelToJson(PlaceModel instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
      'properties': instance.properties.toJson(),
    };
