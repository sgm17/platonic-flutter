import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/create_flat/step3_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

class AmenityTransportation extends ConsumerWidget {
  final int universityId;

  const AmenityTransportation({
    Key? key,
    required this.universityId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.watch(flatCreateProvider);

    void toggleNextIcon() {
      ref
          .read(flatCreateProvider.notifier)
          .setIcon(universityId: universityId, isNext: true);
    }

    void togglePastIcon() {
      ref
          .read(flatCreateProvider.notifier)
          .setIcon(universityId: universityId, isNext: false);
    }

    void onSaved(String? minutes) {
      ref
          .read(flatCreateProvider.notifier)
          .setMinutes(universityId: universityId, minutes: int.parse(minutes!));
    }

    return Row(children: [
      SizedBox(
        height: 42.0,
        child: Row(
          children: [
            GestureDetector(
              onTap: togglePastIcon,
              child: const Icon(Icons.navigate_before_outlined,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Container(
              width: 42.0,
              height: 42.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 63, 141, 253)),
              child: Icon(
                flatCreateState.transports
                    .firstWhere((e) => e.university.id == universityId)
                    .icon,
                size: 20,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            GestureDetector(
              onTap: toggleNextIcon,
              child: const Icon(
                Icons.navigate_next_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        width: 8.0,
      ),
      SizedBox(
        width: 115.0,
        child: TextFormField(
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              ref.read(step3ErrorProvider.notifier).state =
                  const ErrorApp(code: 'step3transportation');
              return 'Please enter a value';
            }
            int? time = int.tryParse(value);
            if (time == null || time < 0 || time > 240) {
              ref.read(step3ErrorProvider.notifier).state =
                  const ErrorApp(code: 'step3transportationvalid');
              return 'Please enter a valid time (0-240 minutes)';
            }
            return null;
          },
          textInputAction: TextInputAction.next,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.number,
          maxLines: 1,
          maxLength: 2,
          style: const TextStyle(
              height: 1.1530000141688757,
              fontSize: 14.0,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 255, 255, 255)),
          decoration: InputDecoration(
            hintText: '''10 minutes''',
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
    ]);
  }
}
