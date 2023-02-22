import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/chat_repository/src/models/models.dart';
import 'package:platonic/providers/chat_provider/src/notifiers/conversations_notifier.dart';

final conversationsScrollProvider = StateNotifierProvider<
    ConversationsScrollNotifier,
    AsyncValue<List<Conversation>>>((ref) => ConversationsScrollNotifier(ref));
