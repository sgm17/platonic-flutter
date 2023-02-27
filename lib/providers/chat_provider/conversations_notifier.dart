import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';
import 'package:action_cable/action_cable.dart';
import 'dart:async';

class ConversationsScrollNotifier
    extends StateNotifier<AsyncValue<List<Conversation>>> {
  final Ref ref;
  final channelName = "ConversationChannel";
  late ActionCable cable;

  ConversationsScrollNotifier(this.ref)
      : super(const AsyncValue<List<Conversation>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    List<int> conversationIds = [];

    try {
      final conversations =
          await ref.read(chatViewmodelProvider).getConversations();
      conversationIds = conversations.map((e) => e.id).toList();
      state = AsyncValue.data(conversations);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }

    final tokenId = await FirebaseAuth.instance.currentUser?.getIdToken();

    // Connect to ActionCable channel
    cable = ActionCable.Connect(
      'ws://10.0.2.2:3000/cable',
      headers: {'Authorization': 'Bearer $tokenId'},
    );

    // Subscribe to the channel
    cable.subscribe(channelName,
        channelParams: {"conversation_ids": conversationIds}, onSubscribed: () {
      print('confirm subscription');
    }, onDisconnected: () {
      print('disconnected');
    }, onMessage: handleConversationStream);
  }

  void handleConversationStream(dynamic message) {
    // Parse the incoming message as a JSON string
    final conversationId = message['id'] as int?;
    final jsonString = message['messages'] as List<dynamic>?;
    if (jsonString == null || conversationId == null) {
      return;
    }

    // Parse the JSON string as a Conversation object
    final messages = jsonString.map((e) => Message.fromJson(e)).toList();

    getConversationUpdateState(
        conversationId: conversationId, messages: messages);
  }

  void getConversationUpdateState(
      {required int conversationId, required List<Message> messages}) {
    state = state.when(
      data: (data) {
        final newState = data.map((c) {
          if (c.id == conversationId) {
            return c.copyWith(messages: messages);
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

  @override
  void dispose() {
    cable.disconnect();
    super.dispose();
  }
}
