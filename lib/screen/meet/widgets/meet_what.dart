import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';

class MeetWhat extends StatelessWidget {
  const MeetWhat({Key? key, required this.setPreferences}) : super(key: key);

  final Function setPreferences;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("what is meet?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          const Text("meet random people in your area.",
              style: TextStyle(color: AppColors.navyBlueTitle, fontSize: 44)),
          const Text(
              "get to know the other person beyond their physique for 2 days. discover who studies, their tastes and ambitions. you will start with a point in common: you will both study at the same university.",
              style: TextStyle(
                color: AppColors.navyBlueTitle,
                fontSize: 16,
              )),
          Material(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            child: InkWell(
              onTap: () => setPreferences(),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Text('start meeting',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
