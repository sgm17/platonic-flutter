import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class FirebaseUserNotifier extends StateNotifier<User?> {
  StreamSubscription<User?>? userChangesListener;
  final Ref ref;

  FirebaseUserNotifier(this.ref) : super(null) {
    initialize();
  }

  Future<void> initialize() async {
    final firebaseAuth = FirebaseAuth.instance;
    final messaging = FirebaseMessaging.instance;

    userChangesListener = firebaseAuth.userChanges().listen(onUserChanges);
  }

  Future<void> onUserChanges(User? user) async {
    state = user;
  }

  Future<void> firebaseUserRefresh() async {
    await FirebaseAuth.instance.currentUser?.reload();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  void dispose() {
    userChangesListener?.cancel();
    super.dispose();
  }
}
