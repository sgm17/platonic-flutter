import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activeConversationUserProvider =
    StateProvider<AppUser>((ref) => AppUser.emptyUser);
