import 'package:flutter/material.dart';

class MeetSearching extends StatelessWidget {
  const MeetSearching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Icon(Icons.search), Text('searching meet')],
    );
  }
}
