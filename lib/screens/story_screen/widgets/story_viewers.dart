import 'package:flutter/material.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';

class StoryViewers extends StatelessWidget {
  final List<AppUser> viewers;
  final int totalViewers;

  const StoryViewers(
      {super.key, required this.viewers, required this.totalViewers});

  @override
  Widget build(BuildContext context) {
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
                            image: viewers[i].profileImage != null
                                ? DecorationImage(
                                    image:
                                        NetworkImage(viewers[i].profileImage!),
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
