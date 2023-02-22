import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/story_provider/src/providers/providers.dart';
import '../../../../domain/story_repository/src/models/models.dart';

class StoriesScrollNotifier
    extends StateNotifier<AsyncValue<List<StoriesScroll>>> {
  final Ref ref;

  StoriesScrollNotifier(this.ref)
      : super(const AsyncValue<List<StoriesScroll>>.loading()) {
    ref.watch(storyViewmodelProvider).retrieveStoriesScroll().then((stories) {
      state = AsyncValue.data(stories);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }
}
