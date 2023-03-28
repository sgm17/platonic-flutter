// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeatureModel _$FeatureModelFromJson(Map json) => $checkedCreate(
      'FeatureModel',
      json,
      ($checkedConvert) {
        final val = FeatureModel(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          icon: $checkedConvert(
              'icon', (v) => const IconDataConverter().fromJson(v as int)),
        );
        return val;
      },
    );

Map<String, dynamic> _$FeatureModelToJson(FeatureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': const IconDataConverter().toJson(instance.icon),
    };
