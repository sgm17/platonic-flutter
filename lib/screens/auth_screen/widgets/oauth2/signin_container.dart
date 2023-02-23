import 'package:flutter/material.dart';

class SigninContainer extends StatelessWidget {
  const SigninContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.0,
      height: 44.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 1.0,
          color: const Color.fromARGB(255, 43, 45, 46),
        ),
        boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(0.0, 4.0),
            blurRadius: 4.0,
          )
        ],
      ),
    );
  }
}
