import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';

class ChatEmpty extends StatelessWidget {
  const ChatEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.black),
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.transparent),
          child: const Icon(
            Icons.send_sharp,
            color: AppColors.black,
            size: 70,
          ),
        ),
        const Text(
          'your messages',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const Text(
          'talk to people from your university',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.grey, fontWeight: FontWeight.w500, fontSize: 12),
        ),
        InkWell(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text('start talking',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.4, color: AppColors.white)),
          ),
        )
      ],
    );
  }
}
