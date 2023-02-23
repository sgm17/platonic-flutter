import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';

final favouriteStoriesProvider = StateProvider<List<Story>>((ref) => []);
