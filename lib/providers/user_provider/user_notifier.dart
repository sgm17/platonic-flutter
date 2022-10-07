import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/user_repository/src/models/models.dart';
import 'user_provider.dart';

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
