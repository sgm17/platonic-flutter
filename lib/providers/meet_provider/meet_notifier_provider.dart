import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/meet_repository/src/models/models.dart';
import 'meet_provider.dart';

final meetNotifierProvider =
    StateNotifierProvider<MeetNotifier, AsyncValue<List<Meet>>>((ref) {
  return MeetNotifier(ref.read);
});
