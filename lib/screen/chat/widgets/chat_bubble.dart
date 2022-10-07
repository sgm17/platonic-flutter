import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/extensions/timestamp_extension.dart';
import '../../../domain/chat_repository/src/models/models.dart';
import '../../../domain/user_repository/src/models/models.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.chatBubbleProperties})
      : super(key: key);

  final ChatBubbleProperties chatBubbleProperties;

  @override
  Widget build(BuildContext context) {
    final messageTimestamp = DateTime.fromMillisecondsSinceEpoch(
        chatBubbleProperties.message.timestamp);

    if (!chatBubbleProperties.sender) {
      return Container(
        padding:
            EdgeInsets.symmetric(vertical: chatBubbleProperties.pastMe ? 4 : 8),
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(right: 64.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      chatBubbleProperties.user.profileImage ?? '',
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    padding: const EdgeInsets.all(12.8),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 1, color: AppColors.strongWhite)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatBubbleProperties.message.body,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 11.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            messageTimestamp.toChatBubble(),
                            style: const TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 9.6),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      alignment: Alignment.centerRight,
      padding:
          EdgeInsets.symmetric(vertical: chatBubbleProperties.pastMe ? 4 : 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 64),
              child: Container(
                padding: const EdgeInsets.all(12.8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.strongWhite),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(chatBubbleProperties.message.body,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                            fontSize: 11.2, fontWeight: FontWeight.w500)),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(messageTimestamp.toChatBubble(),
                          style: const TextStyle(
                              fontSize: 9.6,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 12.4),
            child: SizedBox(
              height: 14,
              width: 14,
              child: Image.asset(
                chatBubbleProperties.message.read == null
                    ? 'assets/images/chat-check-white.png'
                    : 'assets/images/chat-check.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChatBubbleProperties {
  final User user;
  final Message message;
  final bool sender;
  final bool pastMe;

  ChatBubbleProperties(this.user, this.message, this.sender, this.pastMe);
}
