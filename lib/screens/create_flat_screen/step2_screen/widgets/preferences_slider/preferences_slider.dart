import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Group minimumstay
    Autogenerated by FlutLab FTF Generator
  */
class PreferencesSlider extends ConsumerStatefulWidget {
  const PreferencesSlider({super.key});

  @override
  PreferencesSliderState createState() => PreferencesSliderState();
}

class PreferencesSliderState extends ConsumerState<PreferencesSlider> {
  late double max;
  late double min;

  @override
  void initState() {
    super.initState();
    final flatCreateState = ref.read(flatCreateProvider);
    max = flatCreateState.maxMonthsStay;
    min = flatCreateState.minMonthsStay;
  }

  void toggleSliderMax(
    DragUpdateDetails details,
  ) {
    {
      setState(() {
        max = (max +
                details.delta.dx /
                    (MediaQuery.of(context).size.width - 16.0 - 25.0))
            .clamp(min, 1.0);
      });
      ref.read(flatCreateProvider.notifier).state =
          ref.read(flatCreateProvider).copyWith(maxMonthsStay: max);
    }
  }

  void toggleSliderMin(
    DragUpdateDetails details,
  ) {
    setState(() {
      min = (min +
              details.delta.dx /
                  (MediaQuery.of(context).size.width - 16.0 - 25.0))
          .clamp(0.0, max);
    });

    ref.read(flatCreateProvider.notifier).state =
        ref.read(flatCreateProvider).copyWith(minMonthsStay: min);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 81.0,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
                height: 23.0, child: PreferencesSliderMinimumTitle()),
            SizedBox(
              height: 23.0,
              child: PreferencesSliderMonthsTitle(
                max: max,
                min: min,
              ),
            )
          ],
        ),
        SizedBox(
          height: 25.0,
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                const Positioned(
                  left: 0.0,
                  top: 12.5,
                  height: 2.0,
                  child: PreferencesMonthSliderLine(),
                ),
                Positioned(
                  left: max *
                      (MediaQuery.of(context).size.width - 16.0 - 25.0 - 16.0),
                  top: 0.0,
                  width: 25.0,
                  height: 25.0,
                  child: GestureDetector(
                      onPanUpdate: toggleSliderMax,
                      child: const PreferencesMonthSliderMax()),
                ),
                Positioned(
                  left: min *
                      (MediaQuery.of(context).size.width - 16.0 - 25.0 - 16.0),
                  top: 0.0,
                  width: 25.0,
                  height: 25.0,
                  child: GestureDetector(
                      onHorizontalDragUpdate: toggleSliderMin,
                      child: const PreferencesMonthSliderMin()),
                )
              ]),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 12.0,
              child: PreferencesSliderNoMinimumTitle(),
            ),
            SizedBox(
              height: 12.0,
              child: PreferencesSliderOverMonthsTitle(),
            ),
          ],
        )
      ]),
    );
  }
}
