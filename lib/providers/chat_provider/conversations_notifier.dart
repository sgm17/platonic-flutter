import 'package:action_cable/action_cable.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';

class ConversationsNotifier extends StateNotifier<List<Conversation>> {
  final String conversationChannelName = "ConversationChannel";
  final String messageChannelName = "MessageChannel";
  final ActionCable? action;
  final Ref ref;

  ConversationsNotifier(this.ref, this.action) : super([]) {
    initialize();
  }

  void initialize() {
    // Subscribe to the conversation channel
    subscribeConversationChannel();

    // Subscribe to the message channel
    subscribeMessageChannel();
  }

  void subscribeConversationChannel() {
    action?.subscribe(conversationChannelName, onSubscribed: () {
      print('confirm conversations subscription');
      getConversations();
    }, onDisconnected: () {
      print('disconnected from conversations');
    }, onMessage: (message) {
      if (message["conversations"] is List) {
        final jsonConversations = message["conversations"];
        final conversations =
            jsonConversations.map((e) => Conversation.fromJson(e)).toList();

        final pastState = state;

        addConversation(conversation: conversations);

        if (pastState.isNotEmpty) {
          unSubscribeMessageChannel();
        }

        subscribeMessageChannel();
      } else if (message["new_conversation"] is Map<String, dynamic>) {
        final jsonConversation = message["new_conversation"];
        final conversation = Conversation.fromJson(jsonConversation);

        final pastState = state;

        addConversation(conversation: conversation);

        if (pastState.isNotEmpty) {
          unSubscribeMessageChannel();
        }
        subscribeMessageChannel();
      } else if (message["delete_conversation"] is Map<String, dynamic>) {
        // delete conversation
        final jsonConversation = message["delete_conversation"];
        final conversationId = jsonConversation["id"];

        deleteConversation(conversationId: conversationId);

        unSubscribeMessageChannel();

        if (state.isNotEmpty) {
          subscribeMessageChannel();
        }
      }
    });
  }

  void unSubscribeMessageChannel() => action?.unsubscribe(messageChannelName);

  void unSubscribeConversationChannel() =>
      action?.unsubscribe(conversationChannelName);

  void subscribeMessageChannel() {
    final conversationIds = state.map((e) => e.id).toList();
    if (conversationIds.isNotEmpty) {
      action?.subscribe(messageChannelName,
          channelParams: {"conversation_ids": conversationIds},
          onSubscribed: () {
        print('confirm messages subscription: $conversationIds');
      }, onDisconnected: () {
        print('disconnected from messages');
      }, onMessage: (message) {
        if (message["message"] is Map<String, dynamic>) {
          final jsonMessage = message["message"];

          final newMessage = Message.fromJson(jsonMessage);
          addMessage(
              conversationId: newMessage.conversationId, message: newMessage);
        }
      });
    }
  }

  void addMessage({required int conversationId, required Message message}) {
    state = state
        .map((e) => e.id == conversationId
            ? e.copyWith(
                messages: e.messages != null ? [...e.messages!, message] : [])
            : e)
        .toList();
  }

  void addConversation({required dynamic conversation}) {
    if (conversation is Conversation) {
      state = [conversation, ...state];
    } else if (conversation is List) {
      state = [...conversation, ...state];
    }
  }

  void deleteConversation({required int conversationId}) {
    state = state
        .where((conversation) => conversation.id != conversationId)
        .toList();
  }

  void getConversations() {
    ref
        .read(actionProvider)
        ?.performAction(conversationChannelName, action: 'get_conversations');
  }

  void createConversation({required int user2Id, required Message message}) {
    final body = {"user2_id": user2Id, ...message.toJson()};

    action?.performAction(conversationChannelName,
        action: 'create_conversation', actionParams: body);
  }

  void sendDeleteConversation({required String conversationId}) {
    final body = {"id": conversationId};

    action?.performAction(conversationChannelName,
        action: 'delete_conversation', actionParams: body);
  }

  void sendMessage({required Message message}) {
    final conversationIds = state.map((e) => e.id).toList();

    if (conversationIds.isNotEmpty) {
      action?.performAction(messageChannelName,
          channelParams: {"conversation_ids": conversationIds},
          action: 'new_message',
          actionParams: message.toJson());
    }
  }
}
