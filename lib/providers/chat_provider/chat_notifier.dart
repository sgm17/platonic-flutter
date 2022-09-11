import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/chat_repository/chat_repository.dart';
import '../../domain/chat_repository/src/models/models.dart';

final chatNotifierProvider =
    StateNotifierProvider<ChatNotifier, AsyncValue<List<Chat>>>((ref) {
  return ChatNotifier(ref.read);
});

final chatViewmodelProvider = Provider<ChatViewmodel>((ref) {
  return ChatViewmodel();
});

class ChatNotifier extends StateNotifier<AsyncValue<List<Chat>>> {
  final Reader _read;

  ChatNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeChatNotifier();
  }

  void _initializeChatNotifier() async {
    final chats = await _read(chatViewmodelProvider).retrieveChats();
    state = AsyncValue.data(chats);
  }
}
