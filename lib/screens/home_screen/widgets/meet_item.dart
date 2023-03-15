import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/providers/error_provider/home_error_provider.dart';
import 'package:platonic/providers/meet_provider/providers.dart';
import 'package:platonic/screens/error_dialog/delete_dialog/delete_dialog.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Component meet_item
    Autogenerated by FlutLab FTF Generator
  */
class MeetItem extends ConsumerWidget {
  const MeetItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetState = ref.watch(meetScrollProvider);

    void toggleMeetConversation() {
      ref.read(activeConversationUserProvider.notifier).state = meetState.user;
      Navigator.pushNamed(context, '/ChatScreen');
    }

    Future<void> toggleDeleteMeet() async {
      try {
        await ref.read(meetViewmodelProvider).deleteMeet(meetId: meetState.id);
      } on ErrorApp catch (e) {
        ref.read(homeErrorProvider.notifier).state = e;
      } catch (e) {
        print(e);
      }
    }

    return GestureDetector(
      onTap: toggleMeetConversation,
      onLongPress: () => showDialog(
          context: context,
          builder: (context) => DeleteDialog(
              error: '''meetdelete''', toggleDelete: toggleDeleteMeet)),
      child: Container(
        alignment: Alignment.bottomCenter,
        width: 80.0,
        height: 110.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: meetState.user.profileImage == null
                ? const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/default_avatar.jpg',
                    ))
                : DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      meetState.user.profileImage!,
                    ),
                  )),
        child: Flexible(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child:
                  MeetTitle(name: meetState.user.name, age: meetState.user.age),
            ),
          ),
        ),
      ),
    );
  }
}
