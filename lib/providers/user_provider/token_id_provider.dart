import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';

final tokenIdProvider = StateProvider<String?>((ref) {
  final tokenId =
      ref.read(sharedPreferencesProvider).getString(FIREBASE_TOKEN_ID_KEY);

  return tokenId;
});
