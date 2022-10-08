import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screen/chat/widgets/widgets.dart';
import '../../domain/chat_repository/src/models/models.dart';
import '../../providers/chat_provider/chat_provider.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.watch(chatNotifierProvider);

    return chats.when(data: (List<Chat> chats) {
      return ProviderScope(
          overrides: [chatListProvider.overrideWithValue(chats)],
          child: const ChatItem());
    }, error: (error, stackTrace) {
      return Text(error.toString());
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
