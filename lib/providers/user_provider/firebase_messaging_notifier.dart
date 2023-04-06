import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'dart:async';

class FirebaseMessagingNotifier extends StateNotifier<String?> {
  StreamSubscription<String?>? cloudTokenListener;
  final User? user;
  final Ref ref;

  FirebaseMessagingNotifier(this.ref, this.user) : super(null) {
    initialize();
  }

  Future<void> initialize() async {
    final messaging = FirebaseMessaging.instance;

    cloudTokenListener = messaging.onTokenRefresh.listen(onCloudTokenChanges);

    if (user != null) {
      final cloudToken = await messaging.getToken();
      if (cloudToken != null) {
        await onCloudTokenChanges(cloudToken);
      }
    }
  }

  Future<void> onCloudTokenChanges(String cloudToken) async {
    try {
      await ref
          .read(userViewmodelProvider)
          .postUpdateCloudToken(cloudToken: cloudToken);
    } on ErrorApp catch (e) {
      ref.read(authErrorProvider.notifier).state = e;
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    cloudTokenListener?.cancel();
    super.dispose();
  }
}
