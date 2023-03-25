import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platonic/constants/constants.dart';
import 'dart:async';

class FirebaseUserNotifier extends StateNotifier<User?> {
  final Ref ref;

  StreamSubscription<User?>? idTokenListener;
  StreamSubscription<User?>? userChangesListener;

  FirebaseUserNotifier(this.ref) : super(null) {
    initialize();
  }

  void initialize() {
    final firebaseAuth = FirebaseAuth.instance;

    if (firebaseAuth.currentUser != null) {
      idTokenListener = firebaseAuth.idTokenChanges().listen(onTokenIdChanges);
      userChangesListener = firebaseAuth.userChanges().listen(onUserChanges);
    }
  }

  void onUserChanges(User? user) {
    state = user;
  }

  Future<void> onTokenIdChanges(User? user) async {
    final tokenId = await user?.getIdToken();

    if (tokenId != null) {
      ref
          .read(sharedPreferencesProvider)
          .setString(FIREBASE_TOKEN_ID_KEY, tokenId);
      ref.read(tokenIdProvider.notifier).state = tokenId;
    }
  }

  Future<void> firebaseUserRefresh() async {
    await FirebaseAuth.instance.currentUser?.reload();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  void dispose() {
    idTokenListener?.cancel();
    super.dispose();
  }
}
