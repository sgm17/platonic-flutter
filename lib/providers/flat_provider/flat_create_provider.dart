import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

final flatCreateProvider = StateNotifierProvider<FlatCreateNotifier, FlatModel>(
    (ref) => FlatCreateNotifier(ref));
