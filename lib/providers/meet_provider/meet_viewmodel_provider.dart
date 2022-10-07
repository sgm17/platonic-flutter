import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/meet_repository/meet_repository.dart';

final meetViewmodelProvider = Provider<MeetViewmodel>((ref) {
  return MeetViewmodel();
});
