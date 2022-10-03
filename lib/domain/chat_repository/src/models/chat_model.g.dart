// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      from: json['from'] as int,
      to: json['to'] as int,
      toUser: User.fromJson(json['toUser'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      action: json['action'] as List<dynamic>,
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'toUser': instance.toUser,
      'messages': instance.messages,
      'action': instance.action,
    };
