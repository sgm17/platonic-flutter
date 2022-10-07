import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/user_repository/src/models/models.dart';
import 'user_notifier.dart';

final userNotifierProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<User>>((ref) {
  return UserNotifier(ref.read);
});
