import 'package:flutter/material.dart';

class StoryViewers extends StatelessWidget {
  final List<String> viewers;
  final int totalViewers;

  const StoryViewers({required this.viewers, required this.totalViewers});

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
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(viewers[i]),
                    ),
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
