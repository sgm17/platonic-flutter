// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_geometry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityGeometry _$$_UniversityGeometryFromJson(
        Map<String, dynamic> json) =>
    _$_UniversityGeometry(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_UniversityGeometryToJson(
        _$_UniversityGeometry instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
