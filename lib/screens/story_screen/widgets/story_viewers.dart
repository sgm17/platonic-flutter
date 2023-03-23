import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';

class StoryViewers extends ConsumerWidget {
  final List<Visualization> viewers;
  final int totalViewers;

  const StoryViewers(
      {super.key, required this.viewers, required this.totalViewers});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 100.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: Stack(
              children: [
                for (int i = 0; i < viewers.length && i < 5; i++)
                  Positioned(
                    left: i * 20.0,
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 2.0),
                            image: viewers[i].user.profileImage != null
                                ? DecorationImage(
                                    image: NetworkImage(
                                        viewers[i].user.profileImage!,
                                        headers: {
                                          'Authorization':
                                              'Bearer ${ref.read(sharedPreferencesProvider).getString(FIREBASE_TOKEN_ID_KEY) ?? ''}'
                                        }),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/default_avatar.jpg'),
                                    fit: BoxFit.cover))),
                  ),
              ],
            ),
          ),
          Text('Saw by $totalViewers'),
        ],
      ),
    );
  }
}
