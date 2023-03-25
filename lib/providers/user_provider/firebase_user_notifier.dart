import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'dart:async';

class FirebaseUserNotifier extends StateNotifier<User?> {
  final initializationSettings = const InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'));

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final Ref ref;

  StreamSubscription<User?>? idTokenListener;
  StreamSubscription<String?>? cloudTokenListener;
  StreamSubscription<User?>? userChangesListener;

  FirebaseUserNotifier(this.ref) : super(null) {
    //FirebaseMessaging.onBackgroundMessage((RemoteMessage message) async {
    //  showNotification(message);
    //});
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

      cloudTokenListener =
          FirebaseMessaging.instance.onTokenRefresh.listen(onCloudTokenChanges);
    }
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

  Future<void> initializeFirebaseMessaging() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    final settings = await messaging.requestPermission();

    final remoteMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        showNotification(message);
      });

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('User tapped on the notification!');
        print('Message data: ${message.data}');
        print('Message notification: ${message.notification}');
      });
    } else {
      print('User declined or has not accepted permission');
    }
  }

  Future<void> showNotification(RemoteMessage message) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications',
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      message.notification!.title,
      message.notification!.body,
      platformChannelSpecifics,
      payload: message.data.toString(),
    );
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
    cloudTokenListener?.cancel();
    super.dispose();
  }
}
