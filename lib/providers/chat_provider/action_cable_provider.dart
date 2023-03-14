import 'package:action_cable/action_cable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/action_cable_notifier.dart';
import 'package:platonic/providers/chat_provider/providers.dart';

final actionCableProvider =
    StateNotifierProvider<ActionCableNotifier, ActionCable?>((ref) {
  final conversationIds =
      ref.watch(chatProvider).asData?.value.map((e) => e.id).toList();
  return ActionCableNotifier(ref, conversationIds);
});
