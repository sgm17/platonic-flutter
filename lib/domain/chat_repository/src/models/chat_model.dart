import '../../../user_repository/src/models/models.dart';
import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Chat with _$Chat {
  const factory Chat(
      {required int from,
      required int to,
      required User toUser,
      required List<Message> messages,
      required dynamic action}) = _Chat;

  factory Chat.fromJson(Map<String, Object?> json) => _$ChatFromJson(json);
}
