import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/providers/chat_provider/conversations_notifier.dart';

final conversationsScrollProvider = StateNotifierProvider<
    ConversationsScrollNotifier,
    AsyncValue<List<Conversation>>>((ref) => ConversationsScrollNotifier(ref));
