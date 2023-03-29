import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/providers/chat_provider/active_user2_provider.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:async';

class FirebaseMessagingNotifier extends StateNotifier<String?> {
  final Ref ref;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  StreamSubscription<String?>? cloudTokenListener;
  StreamSubscription<RemoteMessage?>? foregroundMessageListener;
  StreamSubscription<RemoteMessage?>? messageOpenedAppListener;

  FirebaseMessagingNotifier(this.ref) : super(null);

  Future<void> initialize() async {
    // Firebase Messaging instance
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Start listening cloud token changes
    cloudTokenListener = messaging.onTokenRefresh.listen(onCloudTokenChanges);

    const initializationSettings = InitializationSettings(
        android: AndroidInitializationSettings('ic_notification'),
        iOS: DarwinInitializationSettings());

    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    // Request permission
    await messaging.requestPermission();

    // Apple foreground messages listener
    await messaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);

    // Android foreground messages listener
    foregroundMessageListener =
        FirebaseMessaging.onMessage.listen(showNotification);
  }

  String? handleInitialMessage({required RemoteMessage? message}) {
    if (message != null && message.data["type"] == "chat") {
      var messageJson = message.data;
      messageJson.forEach((key, value) => messageJson[key] = int.parse(value));
      AppUser user = AppUser.fromJson(messageJson);
      ref.read(activeUser2Provider.notifier).state = user;
      return 'ChatScreen';
    } else if (message != null && message.data["type"] == "favourite") {
      final facultyId = int.tryParse(message.data["faculty_id"]);
      if (facultyId != null) {
        ref.read(activeFacultyIdProvider.notifier).state = facultyId;
      }
      return 'StoryScreen';
    } else if (message != null && message.data["type"] == "meet") {
      var messageJson = message.data;
      messageJson.forEach((key, value) => messageJson[key] = int.parse(value));
      AppUser user = AppUser.fromJson(messageJson);
      ref.read(activeUser2Provider.notifier).state = user;
      return 'ChatScreen';
    }
    return null;
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

    const initializationSettings = InitializationSettings(
        android: AndroidInitializationSettings('ic_notification'));
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    if (message.notification != null && message.notification?.android != null) {
      if (message.notification?.body == null) {
        await flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title,
          null,
          platformChannelSpecifics,
          payload: message.data.toString(),
        );
      } else if (message.notification != null) {
        if (message.data["type"] == "chat" &&
            message.data["id"] == ref.read(activeUser2Provider).id.toString()) {
          return;
        }

        await flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title,
          message.notification!.body,
          platformChannelSpecifics,
          payload: message.data.toString(),
        );
      }
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

  @override
  void dispose() {
    cloudTokenListener?.cancel();
    foregroundMessageListener?.cancel();
    messageOpenedAppListener?.cancel();
    super.dispose();
  }
}
