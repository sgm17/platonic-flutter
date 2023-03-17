// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map json) => $checkedCreate(
      'Conversation',
      json,
      ($checkedConvert) {
        final val = Conversation(
          id: $checkedConvert('id', (v) => v as int),
          user1: $checkedConvert('user1',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          user2: $checkedConvert('user2',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Message.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user1': instance.user1.toJson(),
      'user2': instance.user2.toJson(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
