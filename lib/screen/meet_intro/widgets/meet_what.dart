import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';

class MeetWhat extends StatelessWidget {
  const MeetWhat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height * .5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("hi there.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.navyBlueTitle,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
                const Text("meet random people in your area.",
                    style: TextStyle(
                        color: AppColors.navyBlueTitle, fontSize: 44)),
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
                    onTap: () => print('object'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
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
          ),
        ),
      ),
    );
  }
}
