import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/extensions/timestamp_extension.dart';
import 'package:platonic/providers/insta_story_provider/insta_story_provider.dart';
import 'widgets.dart';

class InstaStoryHeader extends ConsumerWidget {
  const InstaStoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final actualStoryIndex = ref.watch(actualStoryIndexProvider);
    final homeStory = ref.watch(homeStoryProvider);
    final storyAction = ref.watch(storyActionProvider);
    final storyController = ref.watch(storyControllerProvider);

    final actualStory = homeStory.stories.elementAt(actualStoryIndex);
    final timestamp =
        DateTime.fromMillisecondsSinceEpoch(actualStory.createdAt);

    final width = MediaQuery.of(context).size.width;

    return Positioned(
      top: 50,
      child: SizedBox(
        width: width - 32,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:
                    Image.network(actualStory.profileImage, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${actualStory.username} ${timestamp.toDate()}",
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 10.4,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(actualStory.facultyName,
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 10.4,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (storyAction == StoryAction.pause) {
                  storyController.pause();
                } else if (storyAction == StoryAction.play) {
                  storyController.play();
                }
              },
              child: SizedBox(
                height: 30,
                width: 30,
                child: storyAction == StoryAction.pause
                    ? const Icon(
                        Icons.pause,
                        size: 30,
                        color: AppColors.white,
                      )
                    : const Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: AppColors.white,
                      ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              height: 30,
              width: 30,
              child: Icon(
                Icons.report_gmailerrorred_outlined,
                color: AppColors.white,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
