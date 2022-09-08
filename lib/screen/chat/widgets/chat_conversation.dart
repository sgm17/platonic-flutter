import 'package:flutter/material.dart';
import 'package:platonic/screen/chat/widgets/chat_action.dart';
import 'package:platonic/screen/chat/widgets/chat_bubble.dart';
import 'package:platonic/screen/home/widgets/widgets.dart';
import '../../../domain/chat_repository/src/models/models.dart';

class ChatConversation extends StatelessWidget {
  const ChatConversation({Key? key, required this.chatConversationProperties})
      : super(key: key);

  final ChatConversationProperties chatConversationProperties;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 52,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                      width: 1, color: Color.fromRGBO(221, 221, 221, 1))),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => chatConversationProperties.setActive(),
                    child: const Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                          chatConversationProperties.chat.toUser.profileImage ??
                              '',
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(chatConversationProperties.chat.toUser.username,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 7,
                        height: 7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: chatConversationProperties
                                        .chat.toUser.online
                                    ? const Color.fromRGBO(70, 233, 65, 1)
                                    : Colors.red),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                          chatConversationProperties.chat.toUser.online
                              ? 'online'
                              : 'offline',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color:
                                  chatConversationProperties.chat.toUser.online
                                      ? const Color.fromRGBO(70, 233, 65, 1)
                                      : Colors.red))
                    ],
                  )
                ])),
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListView.builder(
            itemCount: chatConversationProperties.chat.messages.length,
            itemBuilder: (context, index) {
              final message = chatConversationProperties.chat.messages[index];
              final pastMessage =
                  index < chatConversationProperties.chat.messages.length - 1
                      ? chatConversationProperties.chat.messages[index - 1]
                      : null;
              final sender = message.from == chatConversationProperties.myId;
              final pastMe = index > 0 && pastMessage != null
                  ? pastMessage.from == chatConversationProperties.myId
                  : false;

              final pastMessageDate = pastMessage != null
                  ? DateTime.fromMillisecondsSinceEpoch(pastMessage.timestamp)
                  : null;
              final actualMessageDate =
                  DateTime.fromMillisecondsSinceEpoch(message.timestamp);

              final isNewDate = pastMessageDate != null
                  ? pastMessageDate.year != actualMessageDate.year ||
                      pastMessageDate.month != actualMessageDate.month ||
                      pastMessageDate.day != actualMessageDate.day
                  : false;

              final dateText =
                  "${actualMessageDate.year.toTimeDigit()}/${actualMessageDate.month.toTimeDigit()}/${actualMessageDate.day.toTimeDigit()} ${actualMessageDate.hour.toTimeDigit()}:${actualMessageDate.minute.toTimeDigit()}";

              final chatBubbleProperties = ChatBubbleProperties(
                  chatConversationProperties.chat.toUser,
                  message,
                  sender,
                  pastMe);

              if (index == 0) {
                return Column(
                  children: [
                    Text(
                      dateText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 13.6, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ChatAction(action: chatConversationProperties.chat.action),
                    ChatBubble(chatBubbleProperties: chatBubbleProperties)
                  ],
                );
              }

              if (isNewDate) {
                return Column(
                  children: [
                    Text(
                      dateText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 13.6, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ChatBubble(chatBubbleProperties: chatBubbleProperties)
                  ],
                );
              }

              return ChatBubble(chatBubbleProperties: chatBubbleProperties);
            },
          ),
        ))
      ],
    );
  }
}

class ChatConversationProperties {
  final Chat chat;
  final int myId;
  final Function setActive;

  ChatConversationProperties(this.chat, this.myId, this.setActive);
}
