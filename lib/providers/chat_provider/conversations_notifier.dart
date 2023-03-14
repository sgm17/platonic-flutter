import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/providers/http_provider/http_viewmodel_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'dart:async';

class ConversationsScrollNotifier
    extends StateNotifier<AsyncValue<List<Conversation>>> {
  final Ref ref;

  ConversationsScrollNotifier(this.ref)
      : super(const AsyncValue<List<Conversation>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final conversations =
          await ref.read(chatViewmodelProvider).getConversations();
      state = AsyncValue.data(conversations);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void addConversationWithMessageUpdateState(
      {required Conversation conversation}) {
    state = state.when(
        data: (data) {
          return AsyncValue.data([conversation, ...data]);
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }

  void getConversationUpdateState(
      {required Message message, required int conversationId}) {
    state = state.when(
      data: (data) {
        final newState = data.map((c) {
          if (c.id == conversationId) {
            return c.copyWith(messages: [message, ...c.messages]);
          } else {
            return c;
          }
        }).toList();
        return AsyncValue.data(newState);
      },
      error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
      loading: () => const AsyncValue.loading(),
    );
  }

  Future<int> postCreateConversation(
      {required AppUser appUser, required Message message}) async {
    final conversationId = await ref
        .read(httpViewmodelProvider)
        .postCreateConversation(userId: appUser.id);

    return conversationId;
  }
}
