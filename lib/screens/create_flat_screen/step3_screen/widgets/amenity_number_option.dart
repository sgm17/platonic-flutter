import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'amenity_number_option_text.dart';
import 'widgets.dart';

class AmenityNumberOption extends ConsumerWidget {
  final String number;
  final bool bedroom;

  const AmenityNumberOption(
      {Key? key, required this.number, required this.bedroom})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.watch(flatCreateProvider);

    void toggleAmenityNumber() {
      if (bedroom == true) {
        ref.read(flatCreateProvider.notifier).state =
            flatCreateState.copyWith(bedroom: number);
      } else {
        ref.read(flatCreateProvider.notifier).state =
            flatCreateState.copyWith(bathroom: number);
      }
    }

    return GestureDetector(
      onTap: toggleAmenityNumber,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          alignment: Alignment.center,
          width: 40.0,
          height: 30.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: bedroom && flatCreateState.bedroom == number ||
                      !bedroom && flatCreateState.bathroom == number
                  ? Color.fromARGB(255, 63, 141, 253)
                  : null,
              border: bedroom && flatCreateState.bedroom == number ||
                      !bedroom && flatCreateState.bathroom == number
                  ? Border.all(
                      width: 1.0, color: Color.fromARGB(255, 63, 141, 253))
                  : Border.all(
                      width: 1.0, color: Color.fromARGB(255, 43, 45, 46))),
          child: AmenityNumberOptionText(number: number)),
    );
  }
}
