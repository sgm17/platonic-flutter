import 'package:platonic/providers/user_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenIdProvider = StateNotifierProvider<TokenIdNotifier, String?>((ref) {
  final firebaseUser = ref.watch(firebaseUserProvider);
  return TokenIdNotifier(firebaseUser);
});
