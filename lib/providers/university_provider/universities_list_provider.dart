import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/providers/university_provider/universities_list_notifier.dart';

final universitiesListProvider = StateNotifierProvider<UniversitiesListNotifier,
    AsyncValue<List<UniversitiesList>>>((ref) => UniversitiesListNotifier(ref));
