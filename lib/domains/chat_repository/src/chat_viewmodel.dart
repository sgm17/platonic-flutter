import 'package:platonic/domains/chat_repository/src/models/conversation_model.dart';
import 'package:platonic/domains/chat_repository/src/chat_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatViewmodel implements ChatRepository {
  final Ref ref;

  ChatViewmodel({required this.ref});

  @override
  Future<List<Conversation>> getMessagesScroll() {
    return ref.read(httpViewmodelProvider).getIndexConversations();
  }
}
