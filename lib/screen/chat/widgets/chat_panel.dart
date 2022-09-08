import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/user_notifier.dart';
import 'package:platonic/screen/home/widgets/widgets.dart';

import '../../../domain/chat_repository/src/models/models.dart';
import 'package:flutter/material.dart';

class ChatPanel extends ConsumerWidget {
  const ChatPanel({
    Key? key,
    required this.chatPanelProperties,
  }) : super(key: key);

  final ChatPanelProperties chatPanelProperties;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 52,
          width: double.infinity,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1, color: Color.fromRGBO(221, 221, 221, 1)))),
          child: Text(chatPanelProperties.myUsername,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatPanelProperties.chats.length,
                itemBuilder: ((context, index) {
                  final chat = chatPanelProperties.chats[index];
                  final lastTimeOnline = DateTime.fromMillisecondsSinceEpoch(
                      chat.toUser.lastTimeOnline);
                  return InkWell(
                    onTap: () => chatPanelProperties.setActiveChat(chat),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                    chat.toUser.profileImage ?? '',
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(chat.toUser.username,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      chat.messages.last.body.length >= 15
                                          ? chat.messages.last.body
                                                  .substring(0, 13) +
                                              '...'
                                          : chat.messages.last.body,
                                      style: const TextStyle(
                                          fontSize: 12.8,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        child: Text('·',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.8))),
                                    Text(
                                      "${lastTimeOnline.day.toTimeDigit()}/${lastTimeOnline.month.toTimeDigit()}/${lastTimeOnline.year.toTimeDigit()} ${lastTimeOnline.hour.toTimeDigit()}:${lastTimeOnline.minute.toTimeDigit()}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.8,
                                          color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })))
      ],
    );
  }
}

class ChatPanelProperties {
  final List<Chat> chats;
  final String myUsername;
  final Function setActiveChat;

  ChatPanelProperties(this.chats, this.myUsername, this.setActiveChat);
}
