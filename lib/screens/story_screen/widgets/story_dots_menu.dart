import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoryDotsMenu extends ConsumerWidget {
  const StoryDotsMenu({
    super.key,
    required this.popupMenuButtonKey,
  });

  final GlobalKey popupMenuButtonKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton(
      key: popupMenuButtonKey,
      icon: const SizedBox(
        height: 30.0,
        width: 20.0,
        child: Icon(
          Icons.more_vert,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 20,
        ),
      ),
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
              value: 0,
              height: 30.0,
              child: Text('Delete Story',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w800,
                      color: Colors.red)))
        ];
      },
    );
  }
}
