// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_scroll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagesScroll _$MessagesScrollFromJson(Map json) => $checkedCreate(
      'MessagesScroll',
      json,
      ($checkedConvert) {
        final val = MessagesScroll(
          id: $checkedConvert('id', (v) => v as int),
          user: $checkedConvert('user',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          lastMessage: $checkedConvert('last_message', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'lastMessage': 'last_message'},
    );

Map<String, dynamic> _$MessagesScrollToJson(MessagesScroll instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'last_message': instance.lastMessage,
    };
