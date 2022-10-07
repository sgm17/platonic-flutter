import 'package:flutter_riverpod/flutter_riverpod.dart';

final actualStoryIndexProvider = StateProvider.autoDispose<int>((ref) => 0);
