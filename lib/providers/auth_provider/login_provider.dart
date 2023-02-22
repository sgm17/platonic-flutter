import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/user_repository/src/models/models.dart';

final userLoginProvider = StateProvider<UserLogin>((ref) => const UserLogin());
