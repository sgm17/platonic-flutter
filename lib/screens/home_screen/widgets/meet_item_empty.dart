import 'package:platonic/screens/home_screen/widgets/meet_item_disclaimer.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/providers/user_provider/app_user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class MeetItemEmpty extends ConsumerWidget {
  const MeetItemEmpty({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(appUserProvider);

    return Row(
      children: [
        SizedBox(
          width: 80.0,
          height: 110.0,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: userState.sexToMeet == Sex.female
                          ? const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/63a91e1fa6a45ed6c830240b54e7235ca3056df0.png',
                              ),
                            )
                          : const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/c93797845b3668bcf33845c795477dea9f18c68a.png',
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.5),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        userState.sexToMeet == Sex.female ? 'Mariona' : 'Marc',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10.0,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      )))
            ],
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        const MeetItemDisclaimer()
      ],
    );
  }
}
