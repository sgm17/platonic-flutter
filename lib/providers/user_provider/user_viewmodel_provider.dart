import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/user_repository/user_repository.dart';

final userViewmodelProvider = Provider<UserViewmodel>((ref) {
  return UserViewmodel();
});
