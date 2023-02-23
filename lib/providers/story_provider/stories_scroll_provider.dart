import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';
import 'package:platonic/providers/story_provider/providers.dart';

final storiesScrollProvider = StateNotifierProvider<StoriesScrollNotifier,
    AsyncValue<List<StoriesScroll>>>((ref) => StoriesScrollNotifier(ref));
