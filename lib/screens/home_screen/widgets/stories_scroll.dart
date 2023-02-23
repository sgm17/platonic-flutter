import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

/* Frame stories_scroll
    Autogenerated by FlutLab FTF Generator
  */
class StoriesScroll extends ConsumerWidget {
  const StoriesScroll({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storiesState = ref.watch(storiesScrollProvider);

    return SizedBox(
      height: 135.0,
      child: storiesState.when(
        data: (stories) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10.0,
              );
            },
            itemBuilder: (context, index) {
              return SizedBox(
                width: 100.0,
                height: 135.0,
                child: ProviderScope(overrides: [
                  storyScrollProvider.overrideWithValue(stories[index])
                ], child: const StoryItem()),
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        error: (error, stackTrace) {
          return Text(error.toString());
        },
      ),
    );
  }
}