import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../screen/instastory/widgets/widgets.dart';

final storyActionProvider =
    StateProvider.autoDispose<StoryAction>((ref) => StoryAction.play);
