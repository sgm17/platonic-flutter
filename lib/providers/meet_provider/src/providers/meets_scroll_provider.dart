import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/meet_provider/src/notifiers/meets_scroll_notifier.dart';
import '../../../../domain/meet_repository/src/models/models.dart';

final meetsScrollProvider =
    StateNotifierProvider<MeetsScrollNotifier, AsyncValue<List<MeetsScroll>>>(
        (ref) => MeetsScrollNotifier(ref));
