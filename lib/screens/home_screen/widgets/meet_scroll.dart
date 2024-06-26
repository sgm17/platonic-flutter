import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/meet_provider/providers.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'package:platonic/screens/home_screen/widgets/meet_item_empty.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

/* Frame meets_scroll
    Autogenerated by FlutLab FTF Generator
  */
class MeetScroll extends ConsumerWidget {
  const MeetScroll({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetsState = ref.watch(meetsScrollProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final sharedPreferences = ref.read(sharedPreferencesProvider);
      final meetsScroll = meetsState.value;

      if (meetsScroll?.isNotEmpty == true) {
        final meetId = meetsScroll!.last.id;
        final sharedMeetId = sharedPreferences.getInt(MEET_LAST_USER_ID_KEY);

        if (meetId != sharedMeetId) {
          sharedPreferences.setInt(MEET_LAST_USER_ID_KEY, meetsScroll.last.id);
          ref.read(matchUserProvider.notifier).state = meetsScroll.last.user;
          Navigator.pushNamed(context, '/MatchScreen');
        }
      }
    });

    return SizedBox(
        height: 110.0,
        child: meetsState.when(
          data: (meets) {
            if (meets.isEmpty) {
              return const MeetItemEmpty();
            }

            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: meets.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10.0,
                );
              },
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 80.0,
                    height: 110.0,
                    child: ProviderScope(overrides: [
                      meetScrollProvider.overrideWithValue(meets[index])
                    ], child: const MeetItem()));
              },
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          error: (error, stackTrace) {
            return Text(error.toString());
          },
        ));
  }
}
