import 'package:flutter/material.dart';
import '../../../domain/chat_repository/src/models/models.dart';

class ChatConversation extends StatelessWidget {
  const ChatConversation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChatConversationProperties {
  final Chat chat;
  final int myId;
  final Function setActive;

  ChatConversationProperties(this.chat, this.myId, this.setActive);
}
