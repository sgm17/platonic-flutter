import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/chat_notifier.dart';
import 'package:platonic/screen/chat/widgets/widgets.dart';

import '../../domain/chat_repository/src/models/models.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.watch(chatNotifierProvider);

    return Scaffold(
      body: chats.when(data: (List<Chat> chats) {
        return ChatItem(chats: chats);
      }, error: (error, stackTrace) {
        return Text(error.toString());
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
