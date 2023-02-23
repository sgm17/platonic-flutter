import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/university_repository/university_repository.dart';
import 'package:platonic/providers/meet_settings_provider/meet_settings_provider.dart';
import 'package:platonic/screens/settings_screen/widgets/widgets.dart';

class MeetSwitch extends ConsumerWidget {
  const MeetSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetSettingsState = ref.watch(meetSettingsProvider);

    EdgeInsets containerMargin = meetSettingsState.sexToMeet == Sex.male
        ? const EdgeInsets.only(right: 111.22222137451172, top: 2.0)
        : const EdgeInsets.only(top: 2.0, left: 111.22222137451172);

    return GestureDetector(
      onTap: () => ref.read(meetSettingsProvider.notifier).state =
          meetSettingsState.copyWith(
              sexToMeet: meetSettingsState.sexToMeet == Sex.male
                  ? Sex.female
                  : Sex.male),
      child: Container(
        width: 221.0,
        height: 32.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 221.0,
                height: 32.0,
                child: MeetContainer(),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: containerMargin,
                width: 111.22222137451172,
                height: 29.217390060424805,
                child: const BlueContainer(),
              ),
              Positioned(
                left: 112.66663360595703,
                top: 0.0,
                right: null,
                bottom: null,
                width: 113.33333587646484,
                height: 37.0,
                child: WomanOption(),
              ),
              const Positioned(
                left: 1.444366455078125,
                top: 1.3912984132766724,
                right: null,
                bottom: null,
                width: 116.22222137451172,
                height: 34.217390060424805,
                child: ManOption(),
              )
            ]),
      ),
    );
  }
}
