import 'package:platonic/conversations_api.dart';
import 'package:platonic/domain/chat_repository/src/chat_repository.dart';
import 'package:platonic/domain/chat_repository/src/models/conversation_model.dart';

class ChatViewmodel implements ChatRepository {
  @override
  Future<List<Conversation>> retrieveConversations() {
    return Future.delayed(const Duration(seconds: 1), () => conversations);
  }
}
