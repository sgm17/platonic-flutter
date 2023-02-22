import 'package:flutter/material.dart';
import 'package:platonic/widgets/settings/settings_select/SettingsSelectIcon.dart';
import 'package:platonic/widgets/settings/settings_select/SettingsSelectPlaceholder.dart';

/* Component meet_select
    Autogenerated by FlutLab FTF Generator
  */
class SettingsSelectChild extends StatefulWidget {
  final String placeholder;
  final Widget settingsDialog;

  const SettingsSelectChild(
      {Key? key, required this.placeholder, required this.settingsDialog})
      : super(key: key);

  @override
  State<SettingsSelectChild> createState() => _SettingsSelectChildState();
}

class _SettingsSelectChildState extends State<SettingsSelectChild> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showDialogMethod,
      child: Container(
        width: 221.0,
        height: 37.9799919128418,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromARGB(255, 43, 45, 46),
        ),
        child: Row(children: [
          const SizedBox(
            width: 9.0,
          ),
          Expanded(
            child: SettingsSelectPlaceholder(
              placeholder: widget.placeholder,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 21.0,
            width: 21.0,
            child: const SettingsSelectIcon(),
          ),
          const SizedBox(
            width: 9.0,
          ),
        ]),
      ),
    );
  }

  void _showDialogMethod() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return widget.settingsDialog;
      },
    );
  }
}
