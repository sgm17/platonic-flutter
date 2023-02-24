import 'dart:async';

import 'package:action_cable/action_cable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';

class ConversationsScrollNotifier
    extends StateNotifier<AsyncValue<List<Conversation>>> {
  final Ref ref;

  StreamSubscription<Message?>? conversationListener;

  ConversationsScrollNotifier(this.ref)
      : super(const AsyncValue<List<Conversation>>.loading()) {
    initialize();
  }

  void connectToAChannel() {
    final cable = ActionCable.Connect("ws://10.0.2.2:3000/cable", headers: {
      "Authorization": "Some Token",
    }, onConnected: () {
      print("connected");
    }, onConnectionLost: () {
      print("connection lost");
    }, onCannotConnect: () {
      print("cannot connect");
    });

    cable.subscribe("Chat", // either "Chat" and "ChatChannel" is fine
        channelParams: {"room": "private"},
        onSubscribed: () {}, // `confirm_subscription` received
        onDisconnected: () {}, // `disconnect` received
        onMessage: (Map message) {} // any other message received
        );
  }

  Future<void> initialize() async {
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
