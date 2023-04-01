import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'dart:async';

class TokenIdNotifier extends StateNotifier<String?> {
  final Ref ref;
  StreamSubscription<User?>? idTokenListener;

  TokenIdNotifier(this.ref)
      : super(ref
            .read(sharedPreferencesProvider)
            .getString(FIREBASE_TOKEN_ID_KEY)) {
    initialize();
  }

  void initialize() {
    final firebaseAuth = FirebaseAuth.instance;

    if (firebaseAuth.currentUser != null) {
      idTokenListener = firebaseAuth.idTokenChanges().listen(onTokenIdChanges);
    }
  }

  Future<void> onTokenIdChanges(User? user) async {
    final tokenId = await user?.getIdToken();

    if (tokenId != null) {
      ref
          .read(sharedPreferencesProvider)
          .setString(FIREBASE_TOKEN_ID_KEY, tokenId);
      state = tokenId;
    }
  }

  @override
  void dispose() {
    idTokenListener?.cancel();
    super.dispose();
  }
}
