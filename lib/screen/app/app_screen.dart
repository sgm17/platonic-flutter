import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/create_provider/create_provider.dart';
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
  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    ProviderScope(overrides: [
      backgroundColorsProvider
          .overrideWithValue(AppColors.createBackgroundColors)
    ], child: const CreateScreen()),
    const MeetScreen(),
    const ChatScreen(),
    const ProfileScreen()
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
