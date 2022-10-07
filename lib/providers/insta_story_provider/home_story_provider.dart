import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/story_repository/src/models/models.dart';

final homeStoryProvider =
    Provider.autoDispose<HomeStory>((ref) => throw UnimplementedError());
