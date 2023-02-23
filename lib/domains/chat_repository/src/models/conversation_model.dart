import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/chat_repository/src/models/message_model.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation(
      {required AppUser appUser,
      required List<Message> messages}) = _Conversation;

  static const Conversation emptyConversation =
      Conversation(appUser: AppUser.emptyUser, messages: []);

  factory Conversation.fromJson(Map<String, Object?> json) =>
      _$ConversationFromJson(json);
}
