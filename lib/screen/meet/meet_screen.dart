import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/meet_provider/meet_provider.dart';
import 'package:platonic/screen/meet/widgets/meet_card.dart';
import 'package:platonic/screen/meet/widgets/meet_preferences.dart';
import 'package:platonic/screen/meet/widgets/meet_searching.dart';
import 'package:platonic/screen/meet/widgets/meet_what.dart';
import '../../domain/meet_repository/src/models/models.dart';

class MeetScreen extends ConsumerStatefulWidget {
  const MeetScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MeetScreenState();
}

class _MeetScreenState extends ConsumerState<MeetScreen> {
  late bool preferences;

  @override
  void initState() {
    super.initState();
    preferences = false;
  }

  @override
  Widget build(BuildContext context) {
    final meets = ref.watch(meetNotifierProvider);

    return Scaffold(
      body: meets.when(data: (MeetData meetData) {
        final nodata = meetData.meets.isEmpty;
        final active = meetData.meets
            .where(
                (meet) => meet.endsAt > DateTime.now().millisecondsSinceEpoch)
            .isEmpty;
        final searching = meetData.searching;

        if (searching) {
          return const MeetSearching();
        }

        if (nodata) {
          return MeetWhat(
              setPreferences: () => setState(() => preferences = true));
        }

        if (active == false || preferences == true) {
          return const MeetPreferences();
        }

        return MeetCard(
            meet: meetData.meets.firstWhere(
                (meet) => meet.endsAt > DateTime.now().millisecondsSinceEpoch));
      }, error: ((error, stackTrace) {
        return Text(error.toString());
      }), loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
