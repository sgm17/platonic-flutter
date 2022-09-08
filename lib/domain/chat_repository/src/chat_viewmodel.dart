import 'package:platonic/domain/api_data.dart';
import 'package:platonic/domain/chat_repository/chat_repository.dart';
import 'package:platonic/domain/chat_repository/src/models/chat_model.dart';

class ChatViewmodel implements ChatRepository {
  @override
  Future<List<Chat>> retrieveChats() {
    return Future.delayed(const Duration(seconds: 1), () {
      return chats;
    });
  }
}
