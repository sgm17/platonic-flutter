// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportModel _$TransportModelFromJson(Map json) => $checkedCreate(
      'TransportModel',
      json,
      ($checkedConvert) {
        final val = TransportModel(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          user: $checkedConvert('user',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          icon: $checkedConvert(
              'icon', (v) => const IconDataConverter().fromJson(v as int)),
          minutes: $checkedConvert('minutes', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransportModelToJson(TransportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user': instance.user.toJson(),
      'icon': const IconDataConverter().toJson(instance.icon),
      'minutes': instance.minutes,
    };
