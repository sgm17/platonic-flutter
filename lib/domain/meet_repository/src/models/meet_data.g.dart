// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetData _$$_MeetDataFromJson(Map<String, dynamic> json) => _$_MeetData(
      meets: (json['meets'] as List<dynamic>)
          .map((e) => Meet.fromJson(e as Map<String, dynamic>))
          .toList(),
      searching: json['searching'] as bool,
    );

Map<String, dynamic> _$$_MeetDataToJson(_$_MeetData instance) =>
    <String, dynamic>{
      'meets': instance.meets,
      'searching': instance.searching,
    };
