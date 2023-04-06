import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:platonic/providers/error_provider/home_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/http_provider/providers.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'dart:async';

/* Frame home
    Autogenerated by FlutLab FTF Generator
*/
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  StreamSubscription<RemoteMessage>? messageOpenedAppListener;
  StreamSubscription<RemoteMessage?>? foregroundMessageListener;

  final initializationSettings = const InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'),
      iOS: DarwinInitializationSettings());

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    initialize();
    getMessageOpenedApp();
    getInitialMessage();
  }

  @override
  Widget build(BuildContext context) {
    final homeErrorState = ref.watch(homeErrorProvider);

    final conversationsState = ref.watch(conversationsProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (homeErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  errorApp: homeErrorState,
                ));

        ref.read(homeErrorProvider.notifier).state = null;
      }
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 35.0,
                child: HomeTopbar(),
              ),
              const SizedBox(
                height: 22.0,
              ),
              const SizedBox(
                height: 163.0,
                child: StoriesContainer(),
              ),
              const SizedBox(
                height: 32.0,
              ),
              const SizedBox(
                height: 138.0,
                child: MeetContainer(),
              ),
              const SizedBox(
                height: 32.0,
              ),
              const SizedBox(height: 139.0, child: FlatContainer()),
              const SizedBox(
                height: 32.0,
              ),
              if (conversationsState.isNotEmpty) const MessagesContainer(),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> initialize() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Initialize local notifications
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: handleOnDidReceiveNotification);

    // Request permission
    await messaging.requestPermission();

    // Apple foreground messages listener
    await messaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);

    // Android foreground messages listener
    foregroundMessageListener =
        FirebaseMessaging.onMessage.listen(showNotification);
  }

  Future<String?> handleInitialMessage(
      {required Map<String, dynamic>? payload}) async {
    if (payload == null) return null;
    if (payload["type"] == "chat" || payload["type"] == "meet") {
      final userId = int.parse(payload["id"]);
      final user =
          await ref.read(httpViewmodelProvider).getShowAppUser(userId: userId);
      ref.read(activeUser2Provider.notifier).state = user;
      return '/ChatScreen';
    } else if (payload["type"] == "favourite") {
      final facultyId = int.parse(payload["id"]);
      ref.read(activeFacultyIdProvider.notifier).state = facultyId;
      return '/StoryScreen';
    } else if (payload["type"] == "flat") {
      final flatId = int.parse(payload["id"]);
      ref.read(activeFlatIdProvider.notifier).state = flatId;
      return '/DetailScreen';
    }
    return null;
  }

  Future<void> handleOnDidReceiveNotification(
      NotificationResponse details) async {
    if (details.payload != null) {
      RegExp regex = RegExp(r'{\s*id:\s*(\d+),\s*type:\s*(\w+)\s*}');
      RegExpMatch? match = regex.firstMatch(details.payload!)!;

      Map<String, dynamic> output = {
        'id': match.group(1),
        'type': match.group(2),
      };

      final route = await handleInitialMessage(payload: output);

      if (route != null) {
        Navigator.pushNamed(context, route);
      }
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

    if (message.notification != null && message.notification?.android != null) {
      if (message.notification != null) {
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

  Future<void> getMessageOpenedApp() async {
    messageOpenedAppListener =
        FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      final route = await handleInitialMessage(payload: message.data);
      if (route != null) {
        Navigator.pushNamed(context, route);
      }
    });
  }

  Future<void> getInitialMessage() async {
    final message = await FirebaseMessaging.instance.getInitialMessage();

    final route = await handleInitialMessage(payload: message?.data);

    if (route != null) {
      Navigator.pushNamed(context, route);
    }
  }

  @override
  void dispose() {
    super.dispose();
    messageOpenedAppListener?.cancel();
    foregroundMessageListener?.cancel();
  }
}
