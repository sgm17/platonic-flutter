import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/chat_repository/src/models/models.dart';
import 'chat_provider.dart';

final chatNotifierProvider =
    StateNotifierProvider<ChatNotifier, AsyncValue<List<Chat>>>((ref) {
  return ChatNotifier(ref.read);
});
