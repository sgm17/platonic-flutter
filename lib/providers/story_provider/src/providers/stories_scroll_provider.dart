import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../domain/story_repository/src/models/models.dart';
import '../notifiers/stories_scoll_notifier.dart';

final storiesScrollProvider = StateNotifierProvider<StoriesScrollNotifier,
    AsyncValue<List<StoriesScroll>>>((ref) => StoriesScrollNotifier(ref));
