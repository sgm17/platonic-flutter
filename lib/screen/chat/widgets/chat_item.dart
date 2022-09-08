import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/screen/chat/widgets/chat_conversation.dart';
import 'package:platonic/screen/chat/widgets/chat_empty.dart';
import 'package:platonic/screen/chat/widgets/chat_panel.dart';
import '../../../domain/chat_repository/src/models/models.dart';

class ChatItem extends ConsumerStatefulWidget {
  const ChatItem({Key? key, required this.chats}) : super(key: key);
  final List<Chat> chats;
  final myUsername = 'sergigarciiaa';
  final myId = 1;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatItemState();
}

class _ChatItemState extends ConsumerState<ChatItem> {
  late Chat? activeChat;

  @override
  void initState() {
    super.initState();
    activeChat = null;
  }

  @override
  Widget build(BuildContext context) {
    return chatItemChild();
  }

  Widget chatItemChild() {
    if (widget.chats.isNotEmpty && activeChat == null) {
      final chatPanelProperties = ChatPanelProperties(widget.chats,
          widget.myUsername, (Chat chat) => setState(() => activeChat = chat));
      return ChatPanel(chatPanelProperties: chatPanelProperties);
    } else if (widget.chats.isNotEmpty && activeChat != null) {
      final chatConversationProperties = ChatConversationProperties(
          activeChat!, widget.myId, () => setState(() => activeChat = null));
      return ChatConversation(
          chatConversationProperties: chatConversationProperties);
    }

    return const ChatEmpty();
  }
}
