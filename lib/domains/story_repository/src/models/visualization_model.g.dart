// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visualization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Visualization _$VisualizationFromJson(Map json) => $checkedCreate(
      'Visualization',
      json,
      ($checkedConvert) {
        final val = Visualization(
          id: $checkedConvert('id', (v) => v as int),
          user: $checkedConvert('user',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$VisualizationToJson(Visualization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
    };
