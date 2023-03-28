import 'package:flutter/material.dart';

class DetailTenantsDisclaimerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '''If you share a flat with students from other universities, add them''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.152999997138977,
        fontSize: 16.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 130, 130, 132),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
