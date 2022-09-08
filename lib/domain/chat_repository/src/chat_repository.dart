import 'models/chat_model.dart';

abstract class ChatRepository {
  Future<List<Chat>> retrieveChats();
}
