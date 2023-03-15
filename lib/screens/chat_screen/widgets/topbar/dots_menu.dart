import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DotsMenu extends ConsumerWidget {
  const DotsMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> toggleDeleteChat() async {}

    Future<void> toggleDeleteDialog() async {}

    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: Color.fromARGB(255, 255, 255, 255),
        size: 20,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            onTap: toggleDeleteChat,
            height: 30,
            textStyle: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w800,
                color: Colors.red),
            child: const Text('Delete chat'),
          )
        ];
      },
    );
  }
}
