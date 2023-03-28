import 'package:flutter/material.dart';

class NavigateBeforeDetailIconContainer extends StatelessWidget {
  const NavigateBeforeDetailIconContainer({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color.fromARGB(255, 43, 45, 46),
      ),
      child: child,
    );
  }
}
