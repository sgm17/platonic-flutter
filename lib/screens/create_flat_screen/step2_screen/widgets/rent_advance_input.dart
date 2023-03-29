import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

/* Group rentadvance
    Autogenerated by FlutLab FTF Generator
  */
class RentAdvanceInput extends ConsumerWidget {
  const RentAdvanceInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onSaved(String? advance) {
      if (advance == null) return;

      final currentState = ref.read(flatCreateProvider.notifier).state;
      final advancePriceInCents = int.parse(advance) * 100;

      ref.read(flatCreateProvider.notifier).state =
          currentState.copyWith(advancePriceInCents: advancePriceInCents);
    }

    return TextFormField(
      onSaved: onSaved,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      textAlignVertical: TextAlignVertical.center,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Rent advance per month is required';
        }

        int? rent = int.tryParse(value);
        if (rent == null || rent < 0 || rent >= 2000) {
          return 'Rent per month must be an integer between 0 and 1999';
        }

        return null;
      },
      maxLines: 1,
      style: const TextStyle(
          height: 1.1530000141688757,
          fontSize: 14.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 255, 255, 255)),
      decoration: InputDecoration(
        hintText: '''Rent advance''',
        hintStyle: TextStyle(color: Colors.grey[400]),
        counterText: "",
        errorStyle: const TextStyle(fontSize: 0.01),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 43, 45, 46), width: 1.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 43, 45, 46), width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0)),
      ),
    );
  }
}
