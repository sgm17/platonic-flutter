import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:platonic/providers/error_provider/home_error_provider.dart';
import 'package:platonic/providers/meet_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
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

  @override
  void initState() {
    super.initState();

    initialize();
    getMessageOpenedApp();
    getInitialMessage();
  }

  Future<void> getMessageOpenedApp() async {
    messageOpenedAppListener =
        FirebaseMessaging.onMessageOpenedApp.listen((message) {
      final route = ref
          .read(firebaseMessagingProvider.notifier)
          .handleInitialMessage(message: message);
      if (route != null) {
        Navigator.pushNamed(context, route);
      }
    });
  }

  Future<void> getInitialMessage() async {
    final message = await FirebaseMessaging.instance.getInitialMessage();

    final route = ref
        .read(firebaseMessagingProvider.notifier)
        .handleInitialMessage(message: message);

    if (route != null) {
      Navigator.pushNamed(context, route);
    }
  }

  Future<void> initialize() async {
    await ref.read(firebaseMessagingProvider.notifier).initialize();
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
                  error: homeErrorState.code,
                ));

        ref.read(homeErrorProvider.notifier).state = null;
      }
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      body: SafeArea(
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
            if (conversationsState.isNotEmpty)
              const Expanded(child: MessagesContainer()),
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    messageOpenedAppListener?.cancel();
  }
}
