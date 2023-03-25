import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:action_cable/action_cable.dart';

final actionProvider = Provider<ActionCable>((ref) {
  final sharedPreferences = ref.read(sharedPreferencesProvider);

  final tokenId = sharedPreferences.getString(FIREBASE_TOKEN_ID_KEY);

  final ActionCable cable = ActionCable.Connect(
      dotenv.env['ACTION_CABLE_ENDPOINT']!,
      headers: {'Authorization': 'Bearer $tokenId'});

  ref.onDispose(() {
    cable.disconnect();
  });

  return cable;
});
