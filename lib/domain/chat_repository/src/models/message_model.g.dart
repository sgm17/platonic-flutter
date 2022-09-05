// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int,
      from: json['from'] as int,
      to: json['to'] as int,
      body: json['body'] as String,
      read: json['read'] as bool?,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'body': instance.body,
      'read': instance.read,
      'timestamp': instance.timestamp,
    };
