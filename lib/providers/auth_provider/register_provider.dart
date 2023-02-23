import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';

final userRegisterProvider =
    StateProvider<UserRegister>((ref) => const UserRegister());
