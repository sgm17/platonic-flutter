import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_model.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message(
      {required int id,
      required int from,
      required int to,
      required String body,
      bool? read,
      required int timestamp}) = _Message;
}
