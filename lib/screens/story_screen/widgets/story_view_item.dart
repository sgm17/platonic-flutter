import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/domains/chat_repository/src/models/models.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';
import 'package:platonic/providers/chat_provider/conversations_provider.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/chat_screen/widgets/widgets.dart';
import 'package:platonic/screens/story_screen/widgets/story_dots_menu.dart';
import 'package:platonic/screens/story_screen/widgets/story_viewers.dart';

class StoryViewItem extends ConsumerWidget {
  const StoryViewItem({
    super.key,
    required this.story,
    required this.focusNode,
    required this.popupMenuButtonKey,
  });

  final Story story;
  final FocusNode focusNode;
  final GlobalKey popupMenuButtonKey;

  String getTimeDifference() {
    final now = DateTime.now();

    final difference = now.difference(story.creationDate);

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
    final favouriteStoriesIdState = ref.watch(favouriteStoriesIdProvider);
    final userState = ref.watch(appUserProvider);
    final favorite = favouriteStoriesIdState.contains(story.id);

    final storyOwner = userState.id == story.user.id;

    final alreadyConversation = ref.read(conversationsProvider).any((e) =>
        e.user1.id == story.user.id && e.user2.id == userState.id ||
        e.user1.id == userState.id && e.user2.id == story.user.id);

    void toggleSend(String message) {
      final activeConversation = ref.read(conversationsProvider).firstWhere(
          (e) =>
              e.user1.id == story.user.id && e.user2.id == userState.id ||
              e.user1.id == userState.id && e.user2.id == story.user.id,
          orElse: () => Conversation.emptyConversation);

      if (activeConversation == Conversation.emptyConversation) {
        // Create conversation
        final newMessage = Message(
            id: 0,
            body: message,
            userId: userState.id,
            creationDate: DateTime.now().toUtc(),
            conversationId: 0);

        ref
            .read(conversationsProvider.notifier)
            .createConversation(user2Id: story.user.id, message: newMessage);
      } else {
        final newMessage = Message(
            id: 0,
            body: message,
            userId: userState.id,
            creationDate: DateTime.now().toUtc(),
            conversationId: activeConversation.id);

        ref
            .read(conversationsProvider.notifier)
            .sendMessage(message: newMessage);
      }
    }

    return Container(
      color: const Color.fromARGB(255, 27, 26, 29),
      child: Column(
        children: [
          Expanded(
            child: Stack(alignment: Alignment.center, children: [
              Container(
                  decoration: BoxDecoration(
                      gradient: story.backgroundGradientIndex,
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
                        profileImage: story.user.profileImage),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          story.user.name,
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
              if (storyOwner)
                Positioned(
                    top: 16.0,
                    right: 16.0,
                    child: StoryDotsMenu(
                      popupMenuButtonKey: popupMenuButtonKey,
                    )),
            ]),
          ),
          if (!storyOwner)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: [
                if (!alreadyConversation)
                  Flexible(
                    child: TextField(
                      focusNode: focusNode,
                      onSubmitted: toggleSend,
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
                if (alreadyConversation)
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
          else if (story.visualizations != null &&
              story.visualizations!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: StoryViewers(
                  viewers: story.visualizations!,
                  totalViewers: story.visualizations!.length),
            )
        ],
      ),
    );
  }
}
