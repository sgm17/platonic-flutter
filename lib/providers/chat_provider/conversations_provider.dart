import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/providers/chat_provider/providers.dart';

final conversationsProvider =
    StateNotifierProvider<ConversationsNotifier, List<Conversation>>((ref) {
  final action = ref.watch(actionProvider);
  return ConversationsNotifier(ref, action);
});
