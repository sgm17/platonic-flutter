import 'package:image_picker/image_picker.dart';
import 'package:platonic/providers/error_provider/profile_error_provider.dart';
import 'package:platonic/providers/http_provider/http_viewmodel_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/profile_screen/widgets/widgets.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/error_dialog/loading_dialog/loading_dialog.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:platonic/screens/profile_screen/widgets/back_button_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'dart:io';

/* Frame profile
    Autogenerated by FlutLab FTF Generator
  */
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool isLoading = false;

  Future<void> toggleUpdateImage({bool profileImage = true}) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        isLoading = true;
      });

      // Display the loading dialog
      showDialog(
        context: context,
        builder: (_) => const LoadingDialog(
          loading: 'imageloadingdialog',
        ),
      );

      // Upload the image file to the server
      final image = await ref
          .read(httpViewmodelProvider)
          .postCreateImage(file: File(pickedFile.path));

      // Hide the loading dialog
      Navigator.pop(context);

      setState(() {
        isLoading = false;
      });

      if (profileImage) {
        ref.read(appUserProvider.notifier).setProfileImage(image);
      } else {
        ref.read(appUserProvider.notifier).setMeetImage(image);
      }
    }
  }

  void toggleLoadingDialog() {
    setState(() {
      isLoading = true;
    });

    final dialog = showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const LoadingDialog(loading: 'userloadingdialog'),
    );

    ref.read(appUserProvider.notifier).updateProfile().whenComplete(() {
      Navigator.of(context).pop(); // Dismiss the dialog
      setState(() {
        isLoading = false;
      });
    });

    dialog.then((_) {});
  }

  Future<bool> onWillPop() async {
    if (isLoading) {
      return false;
    } else {
      toggleLoadingDialog();
      await ref.read(appUserProvider.notifier).updateProfile();
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(appUserProvider);
    final profileErrorState = ref.watch(profileErrorProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (profileErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: profileErrorState.code,
                ));

        ref.read(profileErrorProvider.notifier).state = null;
      }
    });

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: WillPopScope(
            onWillPop: onWillPop,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 35.0,
                          height: 35.0,
                          child: BackButtonProfile(
                            toggleLoadingDialog: () async {
                              await onWillPop();
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      GestureDetector(
                        onTap: toggleUpdateImage,
                        child: SizedBox(
                          height: 110.0,
                          child: UserAvatar(
                            profileImage: userState.profileImage,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 11.0,
                      ),
                      SizedBox(
                        height: 25.0,
                        child: NameTitle(
                          name: userState.name,
                        ),
                      ),
                      const SizedBox(
                        height: 1.0,
                      ),
                      SizedBox(
                        height: 18.0,
                        child: UniversityTitle(
                          universityName: userState.university!.name,
                          universitySimpleName:
                              userState.university!.simpleName,
                        ),
                      ),
                      const SizedBox(
                        height: 1.0,
                      ),
                      SizedBox(
                        height: 18.0,
                        child: StudiesTitle(
                          study: userState.study!.studyName,
                        ),
                      ),
                      const SizedBox(
                        height: 39.0,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 18.0,
                          child: HomeTitle(
                            title: '''Meet Picture''',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Expanded(
                        child: MeetPictureContainer(
                          isVisible: userState.meetPicture == null,
                          toggleMeetPicture: () async =>
                              toggleUpdateImage(profileImage: false),
                        ),
                      ),
                    ]),
              ),
            )));
  }
}
