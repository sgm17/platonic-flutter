import 'package:flutter/material.dart';
import 'package:platonic/screens/profile_screen/widgets/widgets.dart';

class BackButtonProfile extends StatelessWidget {
  const BackButtonProfile({super.key, required this.toggleLoadingDialog});

  final Future<void> Function() toggleLoadingDialog;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: toggleLoadingDialog,
        child: Container(
            width: 35.0,
            height: 35.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 43, 45, 46)),
            child: const SizedBox(
              width: 20.0,
              height: 20.0,
              child: BackButtonIconContainer(),
            )));
  }
}
