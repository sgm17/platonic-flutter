import 'package:flutter/material.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'widgets.dart';

class NavigateBeforeDetail extends StatelessWidget {
  const NavigateBeforeDetail(
      {Key? key, required this.ownFlat, required this.bookmark})
      : super(key: key);

  final bool ownFlat;
  final bool bookmark;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const SizedBox(
          width: 25.0,
          height: 25.0,
          child: NavigateBeforeIconContainer(
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 25.0,
        child: NavigateBeforeTitle(
          title: '''Details''',
          color: Colors.white,
        ),
      ),
      if (ownFlat)
        const Row(
          children: [
            NavigateBeforeDetailIconContainer(
                child: Icon(
              Icons.edit,
              size: 20.0,
              color: Colors.white,
            )),
            SizedBox(
              width: 16.0,
            ),
            NavigateBeforeDetailIconContainer(
                child: Icon(
              Icons.delete,
              size: 20.0,
              color: Colors.red,
            ))
          ],
        )
      else
        NavigateBeforeDetailIconContainer(
            child: bookmark
                ? const Icon(Icons.bookmark,
                    size: 20.0, color: Color.fromARGB(255, 232, 236, 0))
                : const Icon(
                    Icons.bookmark_outline,
                    size: 20.0,
                    color: Colors.white,
                  ))
    ]);
  }
}
