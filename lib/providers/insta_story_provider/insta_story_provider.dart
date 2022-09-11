import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:story_view/story_view.dart';

import '../../domain/story_repository/src/models/models.dart';
import '../../screen/instastory/widgets/widgets.dart';

final actualUniversityIdStateProvider =
    StateProvider.autoDispose<int>((ref) => -1);
final actualStoryIndexProvider = StateProvider.autoDispose<int>((ref) => 0);
final storyActionProvider =
    StateProvider.autoDispose<StoryAction>((ref) => StoryAction.play);
final homeStoryProvider =
    Provider.autoDispose<HomeStory>((ref) => throw UnimplementedError());
final storyControllerProvider =
    Provider.autoDispose<StoryController>((ref) => throw UnimplementedError());
