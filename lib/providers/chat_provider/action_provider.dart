import 'package:action_cable/action_cable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/user_provider/providers.dart';

final actionProvider = Provider<ActionCable>((ref) {
  final tokenId = ref.watch(userProvider.notifier).tokenId;

  final ActionCable cable = ActionCable.Connect(ACTION_CABLE_ENDPOINT,
      headers: {'Authorization': 'Bearer $tokenId'});
  ref.onDispose(() {
    cable.disconnect();
  });

  return cable;
});
