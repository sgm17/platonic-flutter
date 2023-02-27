import 'package:flutter/material.dart';
import 'package:platonic/screens/chat_screen/widgets/widgets.dart';

/* Instance received_message
    Autogenerated by FlutLab FTF Generator
  */
class ReceivedMessage extends StatelessWidget {
  const ReceivedMessage(
      {super.key, required this.text, required this.profileImage});

  final String text;
  final String? profileImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313.0,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ReceivedMessageAvatar(profileImage: profileImage),
        const SizedBox(
          width: 10.0,
        ),
        Flexible(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                width: 268.0,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 229, 229, 229),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(0.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                ),
                child: ReceivedMessageText(
                  text: text,
                ))),
      ]),
    );
  }
}
