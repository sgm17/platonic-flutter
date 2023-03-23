import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'package:platonic/providers/user_provider/app_user_provider.dart';
import 'package:platonic/screens/profile_screen/widgets/widgets.dart';

/* Group meet_picutre_container
    Autogenerated by FlutLab FTF Generator
  */
class MeetPictureContainer extends ConsumerWidget {
  const MeetPictureContainer(
      {super.key, required this.isVisible, required this.toggleMeetPicture});

  final bool isVisible;
  final Function()? toggleMeetPicture;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(appUserProvider);

    if (userState.meetPicture == null) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 43, 45, 46),
            borderRadius: BorderRadius.circular(20.0)),
        child: isVisible
            ? GestureDetector(
                onTap: toggleMeetPicture, child: const AddButton())
            : null,
      );
    }

    return GestureDetector(
      onTap: toggleMeetPicture,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: NetworkImage(userState.meetPicture!, headers: {
                    'Authorization':
                        'Bearer ${ref.read(sharedPreferencesProvider).getString(FIREBASE_TOKEN_ID_KEY) ?? ''}'
                  }),
                  fit: BoxFit.cover))),
    );
  }
}
