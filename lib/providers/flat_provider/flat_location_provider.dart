import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/flat_repository/src/models/models.dart';

final flatLocationProvider = StateProvider.autoDispose
    .family<UniversityTransport, List<UniversityTransport>>(
        (ref, universityTransports) {
  return universityTransports.first;
});
