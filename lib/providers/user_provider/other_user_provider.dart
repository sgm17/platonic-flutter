import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';

final otherUserProvider = StateProvider<AppUser>((ref) => AppUser.emptyUser);
