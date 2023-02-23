import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/providers/user_provider/providers.dart';

final userProvider = StateNotifierProvider<UserNotifier, AsyncValue<AppUser>>(
    (ref) => UserNotifier(ref));
