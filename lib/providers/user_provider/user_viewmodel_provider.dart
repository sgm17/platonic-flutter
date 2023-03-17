import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/user_viewmodel.dart';

final userViewmodelProvider = Provider((ref) {
  return UserViewmodel(ref);
});
