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
    final activeConversation = ref.read(activeConversationProvider);

    final updatedConversation = activeConversation.copyWith(
      messages: [
        createMessage(message: message),
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
          child: FutureBuilder(
              future: ref
                  .read(conversationsScrollProvider.notifier)
                  .retrieveAllConversationsMessages(activeConversationState),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ));
                }

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
                        return messages[index].id !=
                                    activeConversationState.user.id &&
                                messages[index + 1].id !=
                                    activeConversationState.user.id
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
                            toggleSend(message: message, ref: ref)),
                  ),
                  const SizedBox(
                    height: 16.0,
                  )
                ]);
              }),
        ));
  }
}
