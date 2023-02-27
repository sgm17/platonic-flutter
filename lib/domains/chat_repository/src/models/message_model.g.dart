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
          message: $checkedConvert('message', (v) => v as String),
          userId: $checkedConvert('user_id', (v) => v as int),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'userId': 'user_id', 'createdAt': 'created_at'},
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'user_id': instance.userId,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
    };
