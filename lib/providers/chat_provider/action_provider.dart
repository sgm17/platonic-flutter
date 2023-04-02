import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:action_cable/action_cable.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';

final actionProvider =
    StateNotifierProvider<ActionNotifier, ActionCable?>((ref) {
  final tokenId = ref.watch(tokenIdProvider);

  return ActionNotifier(tokenId);
});
