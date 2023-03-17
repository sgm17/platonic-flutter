// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map json) => $checkedCreate(
      'Message',
      json,
      ($checkedConvert) {
        final val = Message(
          id: $checkedConvert('id', (v) => v as int),
          conversationId: $checkedConvert('conversation_id', (v) => v as int),
          body: $checkedConvert('body', (v) => v as String),
          userId: $checkedConvert('user_id', (v) => v as int),
          creationDate: $checkedConvert('creation_date',
              (v) => const DateTimeConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'conversationId': 'conversation_id',
        'userId': 'user_id',
        'creationDate': 'creation_date'
      },
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'conversation_id': instance.conversationId,
      'body': instance.body,
      'user_id': instance.userId,
      'creation_date': const DateTimeConverter().toJson(instance.creationDate),
    };
