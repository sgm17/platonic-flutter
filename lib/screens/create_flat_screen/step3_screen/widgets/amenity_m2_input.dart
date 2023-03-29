import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';

/* Group m2built
    Autogenerated by FlutLab FTF Generator
  */
class AmenityM2Input extends ConsumerWidget {
  const AmenityM2Input({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onSaved(String? built) {
      if (built == null) return;

      ref.read(builtProvider.notifier).state = int.parse(built);
    }

    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 23.0,
          child: CreateFlatDetailSubtitle(subtitle: '''Built'''),
        ),
        const SizedBox(
          height: 14.0,
        ),
        SizedBox(
          height: 30.0,
          child: TextFormField(
            onSaved: onSaved,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the square meters';
              }
              final intValue = int.tryParse(value);
              if (intValue == null || intValue <= 0) {
                return 'Please enter a valid positive integer';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.number,
            maxLines: 1,
            maxLength: 3,
            style: const TextStyle(
                height: 1.1530000141688757,
                fontSize: 14.0,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 255, 255, 255)),
            decoration: InputDecoration(
              hintText: '''120''',
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
          ),
        ),
      ]),
    );
  }
}
