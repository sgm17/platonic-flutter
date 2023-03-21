import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/chat_screen/widgets/widgets.dart';
import 'package:platonic/screens/profile_screen/widgets/widgets.dart';

/* Group topbar
    Autogenerated by FlutLab FTF Generator
  */
class ChatTopbar extends ConsumerWidget {
  const ChatTopbar(
      {super.key,
      required this.appUser,
      required this.toggleDeleteDialog,
      required this.activeConversation});

  final Conversation activeConversation;
  final AppUser appUser;
  final Future<void> Function(
          Future<void> Function(BuildContext context) toggleDeleteConversation)
      toggleDeleteDialog;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void toggleProfile() {
      ref.read(otherUserProvider.notifier).state = appUser;
      Navigator.pushNamed(context, '/OtherProfileScreen');
    }

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
          onTap: toggleProfile,
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: Avatar(
              profileImage: appUser.profileImage,
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
        ),
        const Expanded(
            child: SizedBox(
          height: 10.0,
        )),
        if (activeConversation != Conversation.emptyConversation)
          ChatDotsMenu(
              toggleDeleteDialog: toggleDeleteDialog, appUser: appUser),
      ]),
    );
  }
}
