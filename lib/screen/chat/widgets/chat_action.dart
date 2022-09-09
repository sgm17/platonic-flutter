import 'package:flutter/material.dart';

import '../../../domain/story_repository/src/models/models.dart';

class ChatAction extends StatelessWidget {
  const ChatAction({Key? key, required this.action}) : super(key: key);

  final dynamic action;

  @override
  Widget build(BuildContext context) {
    if (action is Story) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 177,
              width: 127,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: action.backgroundColor),
              child: Text(
                action.body,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.4,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${action.username} has replied your story",
              textAlign: TextAlign.left,
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 11.2),
            ),
            const SizedBox(
              height: 3,
            ),
            const SizedBox(
              width: 177,
              child: Divider(
                thickness: 2,
                color: Color.fromRGBO(221, 221, 221, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 177,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${action.username} has started meeting you",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 11.2),
                ),
                const SizedBox(
                  height: 3,
                ),
                const SizedBox(
                  width: 177,
                  child: Divider(
                    thickness: 2,
                    color: Color.fromRGBO(221, 221, 221, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
