import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/providers.dart';

final firebaseMessagingProvider =
    StateNotifierProvider<FirebaseMessagingNotifier, String?>((ref) {
  final firebaseUserState = ref.watch(firebaseUserProvider);
  final firebaseMessagingState =
      FirebaseMessagingNotifier(ref, firebaseUserState);

  return firebaseMessagingState;
});
