import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';

final firstTimeProvider = StateProvider<bool>((ref) {
  final sharedPreferences = ref.read(sharedPreferencesProvider);

  final firstTimeUsingAppp =
      sharedPreferences.getBool(FIRST_TIME_USING_APP_KEY);

  return firstTimeUsingAppp ?? true;
});
