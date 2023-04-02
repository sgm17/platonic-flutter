import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class FirebaseUserNotifier extends StateNotifier<User?> {
  StreamSubscription<User?>? userChangesListener;
  StreamSubscription<String?>? cloudTokenListener;
  final Ref ref;

  FirebaseUserNotifier(this.ref) : super(null) {
    initialize();
  }

  void initialize() {
    final firebaseAuth = FirebaseAuth.instance;
    final messaging = FirebaseMessaging.instance;

    userChangesListener = firebaseAuth.userChanges().listen(onUserChanges);
    cloudTokenListener = messaging.onTokenRefresh.listen(onCloudTokenChanges);
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

  Future<void> onCloudTokenChanges(String cloudToken) async {
    try {
      await ref
          .read(userViewmodelProvider)
          .postUpdateCloudToken(cloudToken: cloudToken);
    } on ErrorApp catch (e) {
      ref.read(splashErrorProvider.notifier).state = e;
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    userChangesListener?.cancel();
    cloudTokenListener?.cancel();
    super.dispose();
  }
}
