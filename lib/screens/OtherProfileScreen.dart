import 'package:platonic/providers/user_provider/src/providers/other_user_provider.dart';
import 'package:platonic/widgets/profile/meet_picutre_container/MeetPictureContainer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/user_repository/src/models/app_user_model.dart';
import 'package:platonic/widgets/back_button/BackButtonContainer.dart';
import '../providers/user_provider/src/providers/providers.dart';
import 'package:platonic/widgets/home_title/HomeTitle.dart';
import 'package:platonic/widgets/profile/NameTitle.dart';
import 'package:platonic/widgets/profile/StudiesTitle.dart';
import 'package:platonic/widgets/profile/UniversityTitle.dart';
import 'package:platonic/widgets/profile/user_avatar/UserAvatar.dart';
import 'package:flutter/material.dart';

/* Frame profile
    Autogenerated by FlutLab FTF Generator
  */
class OtherProfileScreen extends ConsumerWidget {
  const OtherProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(otherUserProvider);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: BackButtonContainer(),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  SizedBox(
                    height: 110.0,
                    child: UserAvatar(
                      profileImage: user.profileImage!,
                    ),
                  ),
                  const SizedBox(
                    height: 11.0,
                  ),
                  SizedBox(
                    height: 25.0,
                    child: NameTitle(
                      name: user.name,
                    ),
                  ),
                  const SizedBox(
                    height: 1.0,
                  ),
                  SizedBox(
                    height: 18.0,
                    child: UniversityTitle(
                      universityName: user.university.name,
                      universitySimpleName: user.university.simpleName,
                    ),
                  ),
                  const SizedBox(
                    height: 1.0,
                  ),
                  SizedBox(
                    height: 18.0,
                    child: StudiesTitle(
                      study: user.study.name,
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
                  const Expanded(
                    child: MeetPictureContainer(
                      isOtherUser: true,
                    ),
                  ),
                ]),
          ),
        ));
  }
}
