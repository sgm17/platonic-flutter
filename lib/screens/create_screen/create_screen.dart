import 'package:platonic/screens/create_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Frame create
    Autogenerated by FlutLab FTF Generator
*/
class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  List<Gradient> gradients = [
    const LinearGradient(
      colors: [
        Color(0xFFFE2A55),
        Color(0xFFFFFD74),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFF2193B0),
        Color(0xFF6DD5ED),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFFB721FF),
        Color(0xFFFF1D00),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Color(0xFF00B4DB),
        Color(0xFF0083B0),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(colors: [
      Color(0xFF8A2BE2),
      Color(0xFF1E90FF),
    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.pinkAccent, Colors.purpleAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.orangeAccent, Colors.redAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),
    const LinearGradient(
        colors: [Colors.blueAccent, Colors.purpleAccent],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)
  ];

  int _gradientIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(gradient: gradients[_gradientIndex]),
          width: width,
          height: height,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 35.0,
                  height: 35.0,
                  child: CreateCloseButton(),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Expanded(
              child: CreateInput(),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const CreateCircularButton(),
            const SizedBox(
              height: 32.0,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 151.0,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 31.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width / 4,
                        child: Container(),
                      ),
                      SizedBox(
                        width: width / 4,
                        child: const StoryTitle(),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: width / 4,
                        child: GestureDetector(
                            onTap: () {
                              _toggleBackground();
                            },
                            child: BackgroundSelector(
                              gradient: gradients[_gradientIndex],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        )));
  }

  void _toggleBackground() {
    setState(() {
      _gradientIndex = (_gradientIndex + 1) % gradients.length;
    });
  }
}