import 'package:platonic/domains/chat_repository/src/models/models.dart';

abstract class ChatRepository {
  Future<List<Conversation>> retrieveConversations();
}