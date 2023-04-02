import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

class TokenIdNotifier extends StateNotifier<String?> {
  StreamSubscription<User?>? idTokenListener;
  final User? user;

  TokenIdNotifier(this.user) : super(null) {
    initialize();
  }

  void initialize() {
    final firebaseAuth = FirebaseAuth.instance;

    if (user != null) {
      idTokenListener = firebaseAuth.idTokenChanges().listen(onTokenIdChanges);
    }
  }

  Future<void> onTokenIdChanges(User? user) async {
    final tokenId = await user?.getIdToken();
    if (mounted) {
      state = tokenId;
    }
  }

  @override
  void dispose() {
    idTokenListener?.cancel();
    super.dispose();
  }
}
