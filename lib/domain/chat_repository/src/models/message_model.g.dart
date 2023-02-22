// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      message: json['message'] as String,
      timestamp: json['timestamp'] as int,
      isSender: json['isSender'] as bool,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'message': instance.message,
      'timestamp': instance.timestamp,
      'isSender': instance.isSender,
    };
