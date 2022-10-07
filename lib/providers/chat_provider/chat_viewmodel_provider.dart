import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/chat_repository/chat_repository.dart';

final chatViewmodelProvider = Provider<ChatViewmodel>((ref) {
  return ChatViewmodel();
});
