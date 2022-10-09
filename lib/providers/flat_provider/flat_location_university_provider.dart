import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/flat_repository/src/models/models.dart';

final flatLocationUniversityProvider =
    StateProvider.family<UniversityTransport, UniversityTransport>(
        (ref, university) => university);
