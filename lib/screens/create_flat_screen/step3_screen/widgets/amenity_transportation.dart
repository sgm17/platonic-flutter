import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/university_repository/university_repository.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'widgets.dart';

class AmenityTransportation extends ConsumerWidget {
  final University tenantUniversity;

  const AmenityTransportation({Key? key, required this.tenantUniversity})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.watch(flatCreateProvider);

    void toggleNextIcon() {
      int currentIndex = transportationIcons.indexOf(flatCreateState.transports
          .firstWhere((e) => e.university == tenantUniversity)
          .icon);

      if (currentIndex == transportationIcons.length - 1) {
        ref.read(flatCreateProvider.notifier).state = flatCreateState.copyWith(
            transports: flatCreateState.transports
                .map((e) => e.university == tenantUniversity
                    ? e.copyWith(icon: transportationIcons[0])
                    : e)
                .toList());
      } else {
        ref.read(flatCreateProvider.notifier).state = flatCreateState.copyWith(
            transports: flatCreateState.transports
                .map((e) => e.university == tenantUniversity
                    ? e.copyWith(icon: transportationIcons[currentIndex + 1])
                    : e)
                .toList());
      }
    }

    void togglePastIcon() {
      int currentIndex = transportationIcons.indexOf(flatCreateState.transports
          .firstWhere((e) => e.university == tenantUniversity)
          .icon);

      if (currentIndex == 0) {
        ref.read(flatCreateProvider.notifier).state = flatCreateState.copyWith(
            transports: flatCreateState.transports
                .map((e) => e.university == tenantUniversity
                    ? e.copyWith(icon: transportationIcons[0])
                    : e)
                .toList());
      } else {
        ref.read(flatCreateProvider.notifier).state = flatCreateState.copyWith(
            transports: flatCreateState.transports
                .map((e) => e.university == tenantUniversity
                    ? e.copyWith(icon: transportationIcons[currentIndex - 1])
                    : e)
                .toList());
      }
    }

    return Row(children: [
      SizedBox(
        height: 42.0,
        child: Row(
          children: [
            GestureDetector(
              onTap: togglePastIcon,
              child: Icon(Icons.navigate_before_outlined,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Container(
              width: 42.0,
              height: 42.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 63, 141, 253)),
              child: Icon(
                flatCreateState.transports
                    .firstWhere((e) => e.university == tenantUniversity)
                    .icon,
                size: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            GestureDetector(
              onTap: toggleNextIcon,
              child: Icon(
                Icons.navigate_next_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        width: 8.0,
      ),
      SizedBox(
        width: 115.0,
        child: TextFormField(
          onSaved: (newValue) {
            ref.read(flatCreateProvider.notifier).state =
                flatCreateState.copyWith(
                    transports: flatCreateState.transports
                        .map((t) => t.university == tenantUniversity
                            ? t.copyWith(minutes: int.parse(newValue!))
                            : t)
                        .toList());
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a value';
            }
            int? time = int.tryParse(value);
            if (time == null || time < 0 || time > 240) {
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
