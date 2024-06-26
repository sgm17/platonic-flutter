import 'package:flutter/material.dart';
import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';

/* Group meet switch
    Autogenerated by FlutLab FTF Generator
  */
class MeetSwitch extends StatefulWidget {
  const MeetSwitch({super.key});

  @override
  State<MeetSwitch> createState() => _MeetSwitchState();
}

class _MeetSwitchState extends State<MeetSwitch> {
  bool _isManSelected = true;

  void _toggleSelection() {
    setState(() {
      _isManSelected = !_isManSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets containerMargin = _isManSelected
        ? const EdgeInsets.only(right: 112.0, top: 2.0)
        : const EdgeInsets.only(top: 2.0, left: 112.0);
    return GestureDetector(
      onTap: _toggleSelection,
      child: Container(
        width: 221.0,
        height: 32.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 221.0,
                height: 32.0,
                child: MeetSwitchContainer(),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: containerMargin,
                width: 112.0,
                height: 30.0,
                child: const MeetBlueContainer(),
              ),
              const Positioned(
                left: 113.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 113.0,
                height: 37.0,
                child: MeetWoman(),
              ),
              const Positioned(
                left: 1.0,
                top: 1.0,
                right: null,
                bottom: null,
                width: 117.0,
                height: 35.0,
                child: MeetMan(),
              )
            ]),
      ),
    );
  }
}
