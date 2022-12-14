import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/screen/splash/widgets/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: AppColors.white, body: Logo());
  }
}
