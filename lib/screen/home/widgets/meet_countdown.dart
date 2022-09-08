import 'dart:async';
import 'package:flutter/material.dart';
import 'package:platonic/screen/home/widgets/meet_item.dart';

class MeetCountdown extends StatefulWidget {
  const MeetCountdown(
      {Key? key, required this.endsAt, this.fontSize, this.textAlign})
      : super(key: key);
  final int endsAt;
  final double? fontSize;
  final TextAlign? textAlign;
  @override
  State<MeetCountdown> createState() => _MeetCountdownState();
}

class _MeetCountdownState extends State<MeetCountdown> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _initCountdown();
  }

  void _initCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (widget.endsAt < DateTime.now().millisecondsSinceEpoch) {
        _timer.cancel();
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final difference = widget.endsAt - DateTime.now().millisecondsSinceEpoch;

    final days = (difference / (1000 * 60 * 60 * 24)).floor();
    final hours =
        ((difference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)).floor();
    final minutes = ((difference % (1000 * 60 * 60)) / (1000 * 60)).floor();
    final seconds = ((difference % (1000 * 60)) / 1000).floor();

    return Text(
        "the meet ends in ${days.toTimeDigit()}:${hours.toTimeDigit()}:${minutes.toTimeDigit()}:${seconds.toTimeDigit()}",
        style: TextStyle(
            fontSize: widget.fontSize ?? 12.8,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(155, 155, 155, 1)),
        textAlign: widget.textAlign ?? TextAlign.center);
  }
}
