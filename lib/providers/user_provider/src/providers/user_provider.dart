import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/user_repository/src/models/app_user_model.dart';
import 'package:platonic/providers/user_provider/user_provider.dart';

final userProvider = StateNotifierProvider<UserNotifier, AsyncValue<AppUser>>(
    (ref) => UserNotifier(ref));
