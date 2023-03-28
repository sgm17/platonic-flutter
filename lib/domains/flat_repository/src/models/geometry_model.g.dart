// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeometryModel _$GeometryModelFromJson(Map json) => $checkedCreate(
      'GeometryModel',
      json,
      ($checkedConvert) {
        final val = GeometryModel(
          coordinates: $checkedConvert(
              'coordinates',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$GeometryModelToJson(GeometryModel instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
    };
