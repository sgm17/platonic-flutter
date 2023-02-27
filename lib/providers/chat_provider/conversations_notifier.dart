import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class ConversationsScrollNotifier
    extends StateNotifier<AsyncValue<List<Conversation>>> {
  final Ref ref;

  StreamSubscription<Message?>? conversationListener;

  ConversationsScrollNotifier(this.ref)
      : super(const AsyncValue<List<Conversation>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    ref.read(chatViewmodelProvider).getConversations().then((conversations) {
      state = AsyncValue.data(conversations);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }

  void updateConversation(Conversation conversation) {
    state = state.when(
      data: (conversations) {
        final updatedConversations = conversations.map((c) {
          return c.user.uid == conversation.user.uid ? conversation : c;
        }).toList();

        return AsyncData(updatedConversations);
      },
      loading: () => const AsyncValue.loading(),
      error: (error, stackTrace) => AsyncError(error, stackTrace),
    );
  }

  Future<void> retrieveAllConversationsMessages(
      Conversation conversation) async {
    final messages = await ref
        .read(httpViewmodelProvider)
        .getShowConversationsMessages(conversationId: conversation.id);

    state = state.when(
        data: (conversations) {
          final updatedConversations = conversations
              .map((e) => e.user.uid == conversation.user.uid
                  ? conversation.copyWith(messages: messages)
                  : e)
              .toList();
          return AsyncData(updatedConversations);
        },
        loading: () => const AsyncValue.loading(),
        error: (error, stackTrace) => AsyncError(error, stackTrace));
  }
}
