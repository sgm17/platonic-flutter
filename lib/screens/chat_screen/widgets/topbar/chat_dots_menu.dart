import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:platonic/domains/chat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/providers/error_provider/chat_error_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ChatDotsMenu extends ConsumerWidget {
  const ChatDotsMenu(
      {super.key, required this.toggleDeleteDialog, required this.appUser});

  final Future<void> Function(void Function() toggleDeleteConversation)
      toggleDeleteDialog;
  final AppUser appUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(appUserProvider);

    void deleteConversation() async {
      try {
        final conversation = ref.read(conversationsProvider).firstWhere(
            (e) =>
                e.user1.id == appUser.id && e.user2.id == userState.id ||
                e.user1.id == userState.id && e.user2.id == appUser.id,
            orElse: () => Conversation.emptyConversation);

        if (conversation != Conversation.emptyConversation) {
          ref.read(conversationsProvider.notifier).sendDeleteConversation(
              conversationId: conversation.id.toString());
        }
        Navigator.of(context).pop();
      } on ErrorApp catch (e) {
        ref.read(chatErrorProvider.notifier).state = e;
      } catch (e) {
        print(e);
      }
    }

    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: Color.fromARGB(255, 255, 255, 255),
        size: 20.0,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 0,
            height: 30.0,
            textStyle: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w800,
                color: Colors.red),
            child: Text(AppLocalizations.of(context)!.chatDotsMenuText),
          )
        ];
      },
      onSelected: (value) async {
        if (value == 0) {
          await toggleDeleteDialog(deleteConversation);
        }
      },
    );
  }
}
