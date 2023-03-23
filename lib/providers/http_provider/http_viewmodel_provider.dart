import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/http_repository/src/http_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';

final httpViewmodelProvider = Provider<HttpViewmodel>((ref) {
  final sharedPreferences = ref.read(sharedPreferencesProvider);

  final tokenId = sharedPreferences.getString(FIREBASE_TOKEN_ID_KEY);

  return HttpViewmodel(tokenId: tokenId);
});
