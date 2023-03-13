import 'package:flutter/material.dart';
import 'package:platonic/screens/error_dialog/delete_dialog/widgets/widgets.dart';

/* Frame delete
    Autogenerated by FlutLab FTF Generator
  */
class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key, required this.deleteText});

  final String deleteText;

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 217, 217, 217),
        child: SizedBox(
          height: 146.0,
          child: Column(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10.0),
                child: DeleteText(deleteText: deleteText),
              ),
            ),
            Row(
              children: [
                Flexible(
                    child: Container(
                  alignment: Alignment.center,
                  height: 36.0,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Color.fromARGB(255, 147, 147, 147),
                              width: 0.5),
                          right: BorderSide(
                              color: Color.fromARGB(255, 147, 147, 147),
                              width: 0.5))),
                  child: DeleteButtonCancel(),
                )),
                Flexible(
                    child: Container(
                  alignment: Alignment.center,
                  height: 36.0,
                  decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(
                            color: Color.fromARGB(255, 147, 147, 147),
                            width: 0.5,
                          ),
                          top: BorderSide(
                              color: Color.fromARGB(255, 147, 147, 147),
                              width: 0.5))),
                  child: const DeleteButtonText(),
                ))
              ],
            ),
          ]),
        ));
  }
}
