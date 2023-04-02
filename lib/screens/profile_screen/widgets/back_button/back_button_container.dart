import 'package:flutter/material.dart';
import 'package:platonic/screens/profile_screen/widgets/widgets.dart';

/* Instance backbutton
    Autogenerated by FlutLab FTF Generator
  */
class BackButtonContainer extends StatelessWidget {
  const BackButtonContainer({Key? key, this.togglePopConversation})
      : super(key: key);

  final Function()? togglePopConversation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (togglePopConversation != null) {
            togglePopConversation!();
          }
          Navigator.pop(context);
        },
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
