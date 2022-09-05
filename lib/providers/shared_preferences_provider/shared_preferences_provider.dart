import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/shared_preferences_repository/shared_preferences_viewmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final sharedPreferencesViewmodelProvider = Provider<SharedPreferencesViewmodel>(
    (ref) => SharedPreferencesViewmodel(read: ref.read));
