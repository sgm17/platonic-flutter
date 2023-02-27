import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/chat_repository/src/models/models.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/screens/chat_screen/widgets/widgets.dart';

/* Frame chat
    Autogenerated by FlutLab FTF Generator
  */
class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key});

  Message createMessage({required String message}) {
    return Message(
        id: 0, message: message, userId: 0, createdAt: DateTime.now());
  }

  void toggleSend({required WidgetRef ref, required String message}) {
    /* final activeConversation = ref.read(activeConversationProvider);

    final updatedConversation = activeConversation.copyWith(
      messages: [
        createMessage(message: message),
        ...activeConversation.messages,
      ],
    );

    ref.read(conversationsScrollProvider.notifier).updateConversation(
          updatedConversation,
        );

    ref.read(activeConversationProvider.notifier).state = updatedConversation; */
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationState = ref.watch(conversationsScrollProvider);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
            child: conversationState.when(
          data: (data) {
            final activeConversationState = data.firstWhere(
                (c) => c.id == ref.read(activeConversationIdProvider));
            final messages = activeConversationState.messages.reversed.toList();

            return Column(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 40.0,
                  child: ChatTopbar(
                    appUser: activeConversationState.user,
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
                        messages[index].createdAt.day !=
                            messages[index + 1].createdAt.day) {
                      children.add(ChatTimestampText(
                        timestamp: messages[index].createdAt,
                      ));
                      children.add(const SizedBox(height: 8.0));
                    }

                    children.add(messages[index].userId !=
                            activeConversationState.user.id
                        ? SendedMessage(text: messages[index].message)
                        : ReceivedMessage(
                            text: messages[index].message,
                            profileImage:
                                activeConversationState.user.profileImage,
                          ));

                    return Column(
                      crossAxisAlignment: messages[index].userId !=
                              activeConversationState.user.id
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: children,
                    );
                  },
                  separatorBuilder: (context, index) {
                    final currentUserId = messages[index].userId;
                    final nextUserId = index < messages.length - 1
                        ? messages[index + 1].userId
                        : null;
                    final isSameUser = currentUserId == nextUserId;

                    return SizedBox(
                      height: isSameUser ? 8.0 : 16.0,
                    );
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
                        toggleSend(message: message, ref: ref)),
              ),
              const SizedBox(
                height: 16.0,
              )
            ]);
          },
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          error: (error, stackTrace) {
            return Text(error.toString());
          },
        )));
  }
}
