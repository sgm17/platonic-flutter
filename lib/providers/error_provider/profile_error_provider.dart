import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';

final profileErrorProvider = StateProvider<ErrorApp?>((ref) => null);
