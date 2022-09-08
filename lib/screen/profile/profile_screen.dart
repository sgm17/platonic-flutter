import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/user_notifier.dart';
import 'package:platonic/screen/profile/widgets/profile_item.dart';

import '../../domain/user_repository/src/models/models.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return user.when(data: (User user) {
      return ProfileItem(user: user);
    }, error: ((error, stackTrace) {
      return Text(error.toString());
    }), loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
