import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/university_provider/university_provider.dart';
import 'package:platonic/screen/meet/widgets/meet_dropdown.dart';
import '../../../domain/user_repository/src/models/models.dart';

class MeetPreferences extends ConsumerWidget {
  const MeetPreferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final universities = ref.watch(universityProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'meet people from your university',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 36,
                color: AppColors.navyBlueTitle,
                fontWeight: FontWeight.bold),
          ),
          const Text('preferences of the person you are looking for',
              style: TextStyle(
                  fontSize: 24,
                  color: AppColors.navyBlueTitle,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
          MeetDropdown(select: universities),
          const MeetDropdown(select: Sex.values),
          Material(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.mainColor,
            child: InkWell(
                onTap: () => print('object'),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 14.4),
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: const Text(
                    'start searching',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white, fontSize: 12.8),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
