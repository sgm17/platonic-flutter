import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../domain/user_repository/src/models/models.dart';

final otherUserProvider = StateProvider<AppUser>((ref) => AppUser.emptyUser);
