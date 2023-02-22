import 'package:platonic/domain/chat_repository/src/models/models.dart';

abstract class ChatRepository {
  Future<List<Conversation>> retrieveConversations();
}
