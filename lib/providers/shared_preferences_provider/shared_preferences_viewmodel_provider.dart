import 'package:platonic/domain/shared_preferences_repository/shared_preferences_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sharedPreferencesViewmodelProvider = Provider<SharedPreferencesViewmodel>(
    (ref) => SharedPreferencesViewmodel(read: ref.read));
