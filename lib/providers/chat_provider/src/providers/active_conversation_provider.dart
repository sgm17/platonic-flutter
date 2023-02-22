import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/chat_repository/src/models/models.dart';

final activeConversationProvider =
    StateProvider<Conversation>((ref) => Conversation.emptyConversation);
