// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate_lessor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealEstateLessor _$$_RealEstateLessorFromJson(Map<String, dynamic> json) =>
    _$_RealEstateLessor(
      id: json['id'] as int,
      telephone: json['telephone'] as String,
      name: json['name'] as String,
      realEstateName: json['realEstateName'] as String,
      flatReference: json['flatReference'] as int,
      realEstateWebsite: json['realEstateWebsite'] as String,
      realEstateCity: json['realEstateCity'] as String,
      realEstateLogo: json['realEstateLogo'] as String,
    );

Map<String, dynamic> _$$_RealEstateLessorToJson(_$_RealEstateLessor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'telephone': instance.telephone,
      'name': instance.name,
      'realEstateName': instance.realEstateName,
      'flatReference': instance.flatReference,
      'realEstateWebsite': instance.realEstateWebsite,
      'realEstateCity': instance.realEstateCity,
      'realEstateLogo': instance.realEstateLogo,
    };
