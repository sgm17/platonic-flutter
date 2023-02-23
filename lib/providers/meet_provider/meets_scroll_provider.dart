import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/meet_repository/meet_repository.dart';
import 'package:platonic/providers/meet_provider/meets_scroll_notifier.dart';

final meetsScrollProvider =
    StateNotifierProvider<MeetsScrollNotifier, AsyncValue<List<MeetsScroll>>>(
        (ref) => MeetsScrollNotifier(ref));
