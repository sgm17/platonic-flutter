import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/widgets/back_button/BackButtonContainer.dart';
import 'package:platonic/widgets/chat/Avatar.dart';
import 'package:platonic/widgets/chat/topbar/UserTitle.dart';
import '../../../domain/user_repository/src/models/models.dart';
import '../../../providers/user_provider/user_provider.dart';

/* Group topbar
    Autogenerated by FlutLab FTF Generator
  */
class ChatTopbar extends ConsumerWidget {
  final AppUser appUser;

  const ChatTopbar({super.key, required this.appUser});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 40.0,
      child: Row(children: [
        const SizedBox(
          width: 35.0,
          height: 35.0,
          child: BackButtonContainer(),
        ),
        const SizedBox(
          width: 30.0,
        ),
        GestureDetector(
          onTap: () {
            ref.read(otherUserProvider.notifier).state = appUser;
            Navigator.pushNamed(context, '/OtherProfileScreen');
          },
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: Avatar(
              profileImage: appUser.profileImage!,
              width: 40.0,
              height: 40.0,
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        SizedBox(
          height: 27.0,
          child: UserTitle(
            name: appUser.name,
          ),
        )
      ]),
    );
  }
}
