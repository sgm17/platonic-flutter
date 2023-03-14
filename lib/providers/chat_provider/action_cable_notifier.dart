import 'package:action_cable/action_cable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/chat_repository/src/models/models.dart';
import 'package:platonic/providers/chat_provider/providers.dart';

class ActionCableNotifier extends StateNotifier<ActionCable?> {
  final String channelName = "ConversationChannel";
  final List<int>? conversationIds;
  final Ref ref;

  ActionCableNotifier(this.ref, this.conversationIds) : super(null) {
    initialize();
  }

  Future<void> initialize() async {
    // Get user uid
    final tokenId = await FirebaseAuth.instance.currentUser?.getIdToken();

    // Connect to ActionCable channel
    state = ActionCable.Connect(
      ACTION_CABLE_ENDPOINT,
      headers: {'Authorization': 'Bearer $tokenId'},
    );

    // Subscribe to the channel
    subscribeActionCable();
  }

  void subscribeActionCable() {
    state?.subscribe(channelName,
        channelParams: {"conversation_ids": conversationIds}, onSubscribed: () {
      print('confirm subscription: $conversationIds');
    }, onDisconnected: () {
      print('disconnected');
    }, onMessage: (message) {
      // Parse the incoming message as a JSON string
      final jsonConversation = message as Map<String, dynamic>;

      if (jsonConversation["id"] == null ||
          jsonConversation["conversation_id"] == null ||
          jsonConversation["user_id"] == null ||
          jsonConversation["creation_date"] == null ||
          jsonConversation["message"] == null) {
        return;
      }

      final newMessage = Message.fromJson(jsonConversation);

      final conversationId = jsonConversation['conversation_id'];

      ref.read(chatProvider.notifier).getConversationUpdateState(
          message: newMessage, conversationId: conversationId);
    });
  }

  void sendMessageAction(
      {required Message message, required int conversationId}) {
    final body = {"conversation_id": conversationId, ...message.toJson()};

    state?.performAction(channelName,
        channelParams: {
          "conversation_ids": [conversationId]
        },
        action: 'new_message',
        actionParams: {'data': body});
  }

  @override
  void dispose() {
    state?.disconnect();
    super.dispose();
  }
}
