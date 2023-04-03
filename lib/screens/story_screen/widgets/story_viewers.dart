import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/providers/user_provider/providers.dart';

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
                    left: i * 15.0,
                    child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: viewers[i].user.profileImage != null
                                ? DecorationImage(
                                    image: NetworkImage(
                                        viewers[i].user.profileImage!,
                                        headers: {
                                          'Authorization':
                                              'Bearer ${ref.read(tokenIdProvider)}'
                                        }),
                                    fit: BoxFit.cover)
                                : const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/default_avatar.png'),
                                    fit: BoxFit.cover))),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Saw by $totalViewers',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.152999997138977,
              fontSize: 14.0,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 255, 255, 255),

              /* letterSpacing: 0.0, */
            ),
          ),
        ],
      ),
    );
  }
}
