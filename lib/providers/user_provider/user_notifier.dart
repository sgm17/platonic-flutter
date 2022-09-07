import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/user_repository/src/user_viewmodel.dart';

import '../../domain/user_repository/src/models/models.dart';

final userViewmodelProvider = Provider<UserViewmodel>((ref) {
  return UserViewmodel();
});

final userProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<User>>((ref) {
  return UserNotifier(ref.read);
});

class UserNotifier extends StateNotifier<AsyncValue<User>> {
  final Reader _read;

  UserNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeUserNotifier();
  }

  void _initializeUserNotifier() async {
    final user = await _read(userViewmodelProvider).retrieveProfile();
    state = AsyncValue.data(user);
  }
}
