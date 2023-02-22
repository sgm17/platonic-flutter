import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/chat_repository/src/models/models.dart';
import 'package:platonic/providers/chat_provider/src/providers/providers.dart';
import 'package:platonic/widgets/chat/ChatTimestampText.dart';
import 'package:platonic/widgets/chat/received_message/ReceivedMessage.dart';
import 'package:platonic/widgets/chat/sended_message/SendedMessage.dart';
import 'package:platonic/widgets/chat/topbar/ChatTopbar.dart';
import 'package:platonic/widgets/chat/bottom_bar/Bottombar.dart';

/* Frame chat
    Autogenerated by FlutLab FTF Generator
  */
class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key});

  void _toggleSend({required WidgetRef ref, required String message}) {
    final activeConversation = ref.watch(activeConversationProvider);

    final updatedConversation = activeConversation.copyWith(
      messages: [
        Message(
          message: message,
          timestamp: DateTime.now().millisecondsSinceEpoch,
          isSender: true,
        ),
        ...activeConversation.messages,
      ],
    );

    ref.read(conversationsScrollProvider.notifier).updateConversation(
          updatedConversation,
        );

    ref.read(activeConversationProvider.notifier).state = updatedConversation;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeConversationState = ref.watch(activeConversationProvider);
    final messages = activeConversationState.messages;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 40.0,
                child: ChatTopbar(
                  appUser: activeConversationState.appUser,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                reverse: true,
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final children = <Widget>[];

                  if (index == messages.length - 1 ||
                      DateTime.fromMillisecondsSinceEpoch(
                                  messages[index].timestamp,
                                  isUtc: true)
                              .day !=
                          DateTime.fromMillisecondsSinceEpoch(
                                  messages[index + 1].timestamp,
                                  isUtc: true)
                              .day) {
                    children.add(ChatTimestampText(
                      timestamp: messages[index].timestamp,
                    ));
                    children.add(const SizedBox(height: 8.0));
                  }

                  children.add(messages[index].isSender
                      ? SendedMessage(text: messages[index].message)
                      : ReceivedMessage(
                          text: messages[index].message,
                          profileImage:
                              activeConversationState.appUser.profileImage!,
                        ));

                  return Column(
                    crossAxisAlignment: messages[index].isSender
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: children,
                  );
                },
                separatorBuilder: (context, index) {
                  return messages[index].isSender ==
                          messages[index + 1].isSender
                      ? const SizedBox(height: 8.0)
                      : const SizedBox(height: 16.0);
                },
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ChatBottombar(
                  toggleSend: ({required String message}) =>
                      _toggleSend(message: message, ref: ref)),
            ),
            const SizedBox(
              height: 16.0,
            )
          ]),
        ));
  }
}
