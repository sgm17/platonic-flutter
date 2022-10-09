// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityTransport _$$_UniversityTransportFromJson(
        Map<String, dynamic> json) =>
    _$_UniversityTransport(
      universityId: json['universityId'] as int,
      universityName: json['universityName'] as String,
      transports: (json['transports'] as List<dynamic>)
          .map((e) => Transport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniversityTransportToJson(
        _$_UniversityTransport instance) =>
    <String, dynamic>{
      'universityId': instance.universityId,
      'universityName': instance.universityName,
      'transports': instance.transports,
    };
