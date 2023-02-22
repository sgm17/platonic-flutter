import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';

final activeFacultyProvider =
    StateProvider<Faculty>((ref) => Faculty.emptyFaculty);
