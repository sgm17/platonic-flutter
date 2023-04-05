import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:heic_to_jpg/heic_to_jpg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
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
  bool isUpdating = false;

  Future<void> toggleUpdateImage({bool profileImage = true}) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        isLoading = true;
      });

      // Display the loading dialog
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => LoadingDialog(
          loading: AppLocalizations.of(context)!.imageloadingdialog,
        ),
      );

      File processImage = File(pickedFile.path);

      String fileExtension = pickedFile.path.split('.').last;
      if (fileExtension == '.heic') {
        String? jpegPath = await HeicToJpg.convert(pickedFile.path);

        if (jpegPath != null) {
          processImage = File(jpegPath);
        }
      }

      String? resultImage;

      try {
        // Upload the image file to the server
        resultImage = await ref
            .read(httpViewmodelProvider)
            .postCreateImage(file: processImage);
      } on ErrorApp catch (e) {
        ref.read(profileErrorProvider.notifier).state = e;
      }

      // Hide the loading dialog
      Navigator.of(context).pop();

      setState(() {
        isLoading = false;
      });

      if (resultImage == null) return;

      if (profileImage) {
        ref.read(appUserProvider.notifier).setProfileImage(resultImage);
      } else {
        ref.read(appUserProvider.notifier).setMeetImage(resultImage);
      }
    }

    setState(() {
      isUpdating = true;
    });
  }

  Future<void> updateProfile() async {
    try {
      setState(() {
        isLoading = true;
      });

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => LoadingDialog(
            loading: AppLocalizations.of(context)!.userloadingdialog),
      );

      await ref.read(appUserProvider.notifier).updateProfile();

      Navigator.of(context).pop();

      setState(() {
        isLoading = false;
      });
    } on ErrorApp catch (e) {
      ref.read(profileErrorProvider.notifier).state = e;
    } catch (e) {
      print(e);
    }
  }

  Future<bool> onWillPop() async {
    if (isLoading) {
      return false;
    } else if (isUpdating == false) {
      return true;
    } else {
      await updateProfile();
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
                  errorApp: profileErrorState,
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
                          child:
                              BackButtonProfile(toggleLoadingDialog: () async {
                            if (await onWillPop()) {
                              Navigator.of(context).pop();
                            }
                          }),
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 18.0,
                          child: HomeTitle(
                            title: AppLocalizations.of(context)!
                                .profileMeetPictureTitle,
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
