import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/screens/chat_screen/widgets/widgets.dart';

class StoryViewItem extends ConsumerWidget {
  const StoryViewItem(
      {super.key, required this.story, required this.focusNode});

  final Story story;
  final FocusNode focusNode;

  String getTimeDifference() {
    final now = DateTime.now();

    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(story.timestamp, isUtc: true);
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds}s';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h';
    } else {
      return '${difference.inDays}d';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteStoriesState = ref.watch(favouriteStoriesProvider);
    final favorite = favouriteStoriesState.contains(story);
    return Container(
      color: const Color.fromARGB(255, 27, 26, 29),
      child: Column(
        children: [
          Expanded(
            child: Stack(alignment: Alignment.center, children: [
              Container(
                  decoration: BoxDecoration(
                      gradient: story.backgroundGradient,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)))),
              Positioned(
                left: 16.0,
                top: 26.0,
                child: Row(
                  children: [
                    Avatar(
                        width: 60.0,
                        height: 60.0,
                        profileImage: story.appUser.profileImage!),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          story.appUser.name,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16.0,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(getTimeDifference(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16.0,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w300))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Text(
                  story.body,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 32.0,
                      fontFamily: 'DezenPro',
                      height: 1.2,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ]),
          ),
          if (story.ownStory == false)
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Row(children: [
                if (story.alreadyConversation == false)
                  Flexible(
                    child: TextField(
                      focusNode: focusNode,
                      textInputAction: TextInputAction.send,
                      textAlignVertical: TextAlignVertical.center,
                      maxLength: 45,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      decoration: InputDecoration(
                        counterText: "",
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1.0,
                          ),
                        ),
                        hintText: 'Enter a message',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                if (story.alreadyConversation == true)
                  Flexible(
                    child: Container(
                      height: 48.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                const SizedBox(
                  width: 8.0,
                ),
                Icon(
                  favorite == false
                      ? Icons.favorite_outline_outlined
                      : Icons.favorite,
                  size: 30.0,
                  color: favorite == false
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.red,
                  fill: favorite == false ? 1.0 : 0,
                )
              ]),
            )
        ],
      ),
    );
  }
}
