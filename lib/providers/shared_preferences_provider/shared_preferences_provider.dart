import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String MEET_SETTINGS_KEY = "MEET_SETTINGS_KEY";
const String FIRST_TIME_USING_APP_KEY = "FIRST_TIME_USING_APP_KEY";

final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());
