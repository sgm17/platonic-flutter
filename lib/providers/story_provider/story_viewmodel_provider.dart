import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/story_viewmodel.dart';

final storyViewmodelProvider =
    Provider<StoryViewmodel>((ref) => StoryViewmodel(ref: ref));
