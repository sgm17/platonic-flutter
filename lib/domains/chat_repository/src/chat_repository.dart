import 'package:platonic/domains/chat_repository/src/models/models.dart';

abstract class ChatRepository {
  // Messages
  Future<List<Conversation>> getMessagesScroll();
  Future<Message> createMessage(
      {required int conversationId, required Message message});
  // Conversations
  Future<Conversation> createConversation({required int user2Id});
  Future<bool> deleteConversation({required int conversationId});
}
