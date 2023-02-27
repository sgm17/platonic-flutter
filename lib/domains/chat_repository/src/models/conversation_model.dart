import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/chat_repository/src/models/message_model.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class Conversation with _$Conversation {
  const Conversation._();

  const factory Conversation(
      {required int id,
      required AppUser user,
      required List<Message> messages}) = _Conversation;

  static const Conversation emptyConversation =
      Conversation(id: 0, user: AppUser.emptyUser, messages: []);

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
