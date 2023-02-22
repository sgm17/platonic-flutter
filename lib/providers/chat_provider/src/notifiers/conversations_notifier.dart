import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/src/providers/providers.dart';
import '../../../../domain/chat_repository/src/models/models.dart';

class ConversationsScrollNotifier
    extends StateNotifier<AsyncValue<List<Conversation>>> {
  final Ref ref;

  ConversationsScrollNotifier(this.ref)
      : super(const AsyncValue<List<Conversation>>.loading()) {
    ref
        .watch(chatViewmodelProvider)
        .retrieveConversations()
        .then((conversations) {
      state = AsyncValue.data(conversations);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }

  void updateConversation(Conversation conversation) {
    state = state.when(
      data: (conversations) {
        final updatedConversations = conversations.map((c) {
          return c.appUser.uid == conversation.appUser.uid ? conversation : c;
        }).toList();

        return AsyncData(updatedConversations);
      },
      loading: () => const AsyncValue.loading(),
      error: (error, stackTrace) => AsyncError(error, stackTrace),
    );
  }
}
