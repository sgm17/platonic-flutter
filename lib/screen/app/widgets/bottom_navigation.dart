import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/app_provider/app_provider.dart';

enum BottomNavigationState { home, create, meet, chat, profile }

const List<Map<String, dynamic>> bottomNavigationItems = [
  {
    "to": BottomNavigationState.home,
    "fill": Icons.home,
    "outline": Icons.home_outlined
  },
  {
    "to": BottomNavigationState.create,
    "fill": Icons.add_circle,
    "outline": Icons.add_circle_outline
  },
  {
    "to": BottomNavigationState.meet,
    "fill": Icons.favorite,
    "outline": Icons.favorite_outline
  },
  {
    "to": BottomNavigationState.chat,
    "fill": Icons.chat_bubble,
    "outline": Icons.chat_bubble_outline
  },
  {
    "to": BottomNavigationState.profile,
    "fill": Icons.person,
    "outline": Icons.person_outline
  }
];

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavigationProvider);

    return BottomNavigationBar(
      currentIndex: BottomNavigationState.values.indexOf(currentIndex),
      onTap: (index) => ref.read(bottomNavigationProvider.notifier).state =
          BottomNavigationState.values.elementAt(index),
      items: bottomNavigationItems
          .map((Map<String, dynamic> bottomNavigationItem) {
        return BottomNavigationBarItem(
            activeIcon: Icon(
              bottomNavigationItem["outline"],
              color: Colors.black,
            ),
            icon: Icon(
              bottomNavigationItem["fill"],
              color: Colors.black,
            ),
            label: '');
      }).toList(),
    );
  }
}
