import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/app/app_provider.dart';

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
  }
];

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavigationProvider);

    return BottomNavigationBar(
      currentIndex: BottomNavigationState.values.indexOf(currentIndex),
      backgroundColor: Colors.white,
      items: bottomNavigationItems
          .map((Map<String, dynamic> bottomNavigationItem) {
        return BottomNavigationBarItem(
            activeIcon: bottomNavigationItem["outline"],
            icon: bottomNavigationItem["fill"],
            label: '');
      }).toList(),
    );
  }
}
