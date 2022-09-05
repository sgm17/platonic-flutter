// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_University _$$_UniversityFromJson(Map<String, dynamic> json) =>
    _$_University(
      id: json['id'] as int,
      acronym: json['acronym'] as String?,
      type: json['type'] as String,
      associateName: json['associateName'] as String?,
      parentName: json['parentName'] as String?,
      name: json['name'] as String,
      address: json['address'] as String,
      simple: json['simple'] as String,
      center: (json['center'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      image: json['image'] as String,
      includes: (json['includes'] as List<dynamic>?)
          ?.map((e) => IncludeUniversity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniversityToJson(_$_University instance) =>
    <String, dynamic>{
      'id': instance.id,
      'acronym': instance.acronym,
      'type': instance.type,
      'associateName': instance.associateName,
      'parentName': instance.parentName,
      'name': instance.name,
      'address': instance.address,
      'simple': instance.simple,
      'center': instance.center,
      'image': instance.image,
      'includes': instance.includes,
    };
