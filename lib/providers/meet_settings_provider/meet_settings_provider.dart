import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/meet_settings_repository/src/models/meet_settings_model.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';

final meetSettingsProvider = StateProvider<MeetSettings>((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);

  final json = sharedPreferences.getString(MEET_SETTINGS_KEY);

  print('MeetSettingsProvider json state: $json');

  if (json != null) {
    final map = jsonDecode(json);
    return MeetSettings.fromJson(map);
  }

  return MeetSettings.emptyMeetSettings;
});
