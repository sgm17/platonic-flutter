import 'package:flutter/material.dart';
import 'package:platonic/screens/error_dialog/loading_dialog/widgets/widgets.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key, required this.loading});

  final String loading;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 146.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53.0),
            child: Material(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 217, 217, 217),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10.0),
                          child: LoadingText(loading: loading),
                        ),
                      ),
                      const Flexible(
                        child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      )
                    ])),
          ),
        ),
      ),
    );
  }
}
