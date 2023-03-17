import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/chat_repository/src/chat_repository.dart';
import 'package:platonic/domains/chat_repository/src/models/conversation_model.dart';
import 'package:platonic/domains/chat_repository/src/models/message_model.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class ChatViewmodel implements ChatRepository {
  final Ref ref;

  ChatViewmodel({required this.ref});

  @override
  Future<List<Conversation>> getMessagesScroll() {
    return ref.read(httpViewmodelProvider).getIndexConversations();
  }

  @override
  Future<Conversation> createConversation({required int user2Id}) {
    return ref
        .read(httpViewmodelProvider)
        .postCreateConversation(user2Id: user2Id);
  }

  @override
  Future<Message> createMessage(
      {required int conversationId, required Message message}) {
    return ref
        .read(httpViewmodelProvider)
        .postCreateMessage(message: message, conversationId: conversationId);
  }

  @override
  Future<bool> deleteConversation({required int conversationId}) {
    return ref
        .read(httpViewmodelProvider)
        .deleteDestroyConversation(conversationId: conversationId);
  }
}
