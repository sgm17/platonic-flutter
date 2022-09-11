// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_feature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityFeature _$$_UniversityFeatureFromJson(Map<String, dynamic> json) =>
    _$_UniversityFeature(
      type: json['type'] as String,
      properties:
          University.fromJson(json['properties'] as Map<String, dynamic>),
      geometry:
          UniversityGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UniversityFeatureToJson(
        _$_UniversityFeature instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'geometry': instance.geometry,
    };
