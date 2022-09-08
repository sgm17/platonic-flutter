import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final backgroundColorProvider = StateProvider<Color>((ref) {
  return backgroundColors.first;
});

const List<Color> backgroundColors = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Color.fromRGBO(128, 128, 0, 1),
  Colors.teal,
  Color.fromRGBO(238, 130, 238, 1),
  Colors.purple,
  Colors.grey,
  Colors.brown,
  Colors.cyan
];

class CreateScreen extends ConsumerStatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateScreenState();
}

class _CreateScreenState extends ConsumerState<CreateScreen> {
  late TextEditingController bodyController;

  @override
  void initState() {
    super.initState();
    bodyController = TextEditingController();
  }

  @override
  void dispose() {
    bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = ref.watch(backgroundColorProvider);
    final content = bodyController.text.isNotEmpty;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: TextField(
                onChanged: (value) =>
                    value.isEmpty || value.length == 1 ? setState(() {}) : null,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                textAlign: TextAlign.center,
                controller: bodyController,
                maxLength: 175,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 32),
                decoration: const InputDecoration(
                    fillColor: Colors.transparent,
                    border: InputBorder.none,
                    hintText: "tap to write",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                    ),
                    counter: SizedBox.shrink()),
              ),
            ),
          ),
          !content
              ? Positioned(
                  left: 16,
                  bottom: 16,
                  child: InkWell(
                    onTap: () {
                      final int actualBackgorundIndex =
                          backgroundColors.indexOf(backgroundColor);

                      ref.read(backgroundColorProvider.notifier).state =
                          actualBackgorundIndex < backgroundColors.length - 1
                              ? backgroundColors[actualBackgorundIndex + 1]
                              : backgroundColors[0];
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.white),
                          color: backgroundColor),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          !content
              ? Positioned(
                  bottom: 16,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            border: Border.all(width: 2, color: Colors.white)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.white,
                        ),
                        child: Text(
                          'Aa',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: backgroundColor),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ))
              : const SizedBox.shrink(),
          content
              ? Positioned(
                  bottom: 16,
                  child: Material(
                    color: const Color.fromRGBO(54, 46, 46, 1),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () => print('object'),
                      child: Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        alignment: Alignment.center,
                        height: 40,
                        width: width - 32,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text('publish crush',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ),
                  ))
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
