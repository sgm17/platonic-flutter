import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class FirebaseUserNotifier extends StateNotifier<User?> {
  final Ref ref;

  StreamSubscription<User?>? userChangesListener;

  FirebaseUserNotifier(this.ref) : super(null) {
    initialize();
  }

  void initialize() {
    final firebaseAuth = FirebaseAuth.instance;

    if (firebaseAuth.currentUser != null) {
      userChangesListener = firebaseAuth.userChanges().listen(onUserChanges);
    }
  }

  void onUserChanges(User? user) {
    state = user;
  }

  Future<void> firebaseUserRefresh() async {
    await FirebaseAuth.instance.currentUser?.reload();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
