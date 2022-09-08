import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/meet_repository/src/models/models.dart';
import 'package:platonic/providers/meet_provider/meet_provider.dart';
import 'package:platonic/screen/home/widgets/meet_item.dart';

class MeetScroll extends ConsumerWidget {
  const MeetScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetProvider = ref.watch(meetNotifierProvider);

    return meetProvider.when(data: (MeetData meetData) {
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: meetData.meets.length,
        itemBuilder: (context, index) {
          final meet = meetData.meets[index];
          final first = index == 0;
          final last = meetData.meets.length - 1 == index;
          final meetItemProperties = MeetItemProperties(first, last, meet);

          return MeetItem(meetItemProperties: meetItemProperties);
        },
      );
    }, error: ((error, stackTrace) {
      return Text(error.toString());
    }), loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
