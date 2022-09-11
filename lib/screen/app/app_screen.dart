import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/app_provider/app_provider.dart';
import 'widgets/widgets.dart';
import '../chat/chat.dart';
import '../create/create.dart';
import '../home/home.dart';
import '../meet/meet.dart';
import '../profile/profile.dart';

class AppScreen extends ConsumerStatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppScreen();
}

class _AppScreen extends ConsumerState<AppScreen> {
  static const List<Widget> _widgetOptions = [
    HomeScreen(),
    CreateScreen(),
    MeetScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavigationState = ref.watch(bottomNavigationProvider);

    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(
            BottomNavigationState.values.indexOf(bottomNavigationState)),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
