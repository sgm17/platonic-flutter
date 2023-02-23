import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

/* Component message_item
    Autogenerated by FlutLab FTF Generator
  */
class MessageItem extends ConsumerWidget {
  const MessageItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationState = ref.watch(conversationScrollProvider);

    return GestureDetector(
      onTap: () {
        ref.read(activeConversationProvider.notifier).state = conversationState;
        Navigator.pushNamed(context, '/ChatScreen');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        alignment: Alignment.centerLeft,
        width: 358.0,
        height: 80.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromARGB(255, 43, 45, 46)),
        child: Row(children: [
          MessageImage(profileImage: conversationState.appUser.profileImage!),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MessageTitle(
                name: conversationState.appUser.name,
              ),
              MessageBody(
                lastMessage: conversationState.messages.first.message,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}