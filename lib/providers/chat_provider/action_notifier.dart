import 'package:action_cable/action_cable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActionNotifier extends StateNotifier<ActionCable?> {
  final String? tokenId;

  ActionNotifier(this.tokenId) : super(null) {
    initialize();
  }

  void initialize() {
    if (tokenId != null) {
      state = ActionCable.Connect(dotenv.env['ACTION_CABLE_ENDPOINT']!,
          headers: {'Authorization': 'Bearer $tokenId'});
    }
  }

  @override
  void dispose() {
    state?.disconnect();
    super.dispose();
  }
}
