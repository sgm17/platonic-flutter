import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/insta_story_provider/insta_story_provider.dart';
import 'package:platonic/providers/story_provider/story_notifier.dart';
import 'package:platonic/screen/instastory/widgets/widgets.dart';
import 'package:story_view/controller/story_controller.dart';
import '../../domain/story_repository/src/models/models.dart';

class InstaStory extends ConsumerStatefulWidget {
  const InstaStory({Key? key, required this.universityId}) : super(key: key);

  final int universityId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InstaStoryState();
}

class _InstaStoryState extends ConsumerState<InstaStory> {
  late int actualUniversityId;
  late HomeStory stories;

  @override
  void initState() {
    super.initState();

    setState(() {
      actualUniversityId = widget.universityId;
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(actualUniversityIdStateProvider, (previous, int next) {
      if (next == -1) {
        Navigator.of(context).pop();
        return;
      }
      setState(() {
        actualUniversityId = next;
      });
    });

    return Scaffold(
      body: FutureBuilder<HomeStory>(
        future: _initializeStoryItem(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final storyController = StoryController();
              final homeStory = snapshot.data as HomeStory;

              return ProviderScope(
                overrides: [
                  storyControllerProvider.overrideWithValue(storyController),
                  homeStoryProvider.overrideWithValue(homeStory)
                ],
                child: Stack(
                  alignment: Alignment.center,
                  fit: StackFit.expand,
                  children: const [
                    InstaStoryItem(),
                    InstaStoryHeader(),
                    InstaStoryBackground(),
                    InstaStoryMore()
                  ],
                ),
              );
            } else {
              return Text(snapshot.error.toString());
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<HomeStory> _initializeStoryItem() async {
    return await ref
        .read(storyNotifierProvider.notifier)
        .storiesPerUniversityId(actualUniversityId);
  }
}
