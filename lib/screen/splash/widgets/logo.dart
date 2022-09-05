import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 100, maxHeight: 100),
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
