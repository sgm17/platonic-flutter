import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String message,
    required int timestamp,
    required String toUid,
  }) = _Message;

  bool imSender(String userUid) => userUid == toUid;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
