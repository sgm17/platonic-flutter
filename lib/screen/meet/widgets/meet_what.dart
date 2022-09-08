import 'package:flutter/material.dart';

class MeetWhat extends StatelessWidget {
  const MeetWhat({Key? key, required this.setPreferences}) : super(key: key);

  final Function setPreferences;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("what is meet?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(226, 47, 47, 1),
                fontSize: 28,
                fontWeight: FontWeight.bold)),
        const Text("meet random people in your area.",
            style:
                TextStyle(color: Color.fromRGBO(63, 66, 84, 1), fontSize: 44)),
        const Text(
            """get to know the other person beyond their physique for 2 days. discover
                who studies, their tastes and ambitions. you will start with a point
                in common: you will both study at the same university.""",
            style: TextStyle(
              color: Color.fromRGBO(63, 66, 84, 1),
              fontSize: 16,
            )),
        InkWell(
          onTap: () => setPreferences,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(226, 47, 47, 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text('start meeting',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
          ),
        )
      ],
    );
  }
}
