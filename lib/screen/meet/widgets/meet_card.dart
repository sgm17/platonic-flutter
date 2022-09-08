import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screen/home/widgets/meet_countdown.dart';
import 'package:platonic/screen/home/widgets/widgets.dart';
import '../../../domain/meet_repository/src/models/models.dart';

class MeetCard extends ConsumerWidget {
  const MeetCard({Key? key, required this.meet}) : super(key: key);

  final Meet meet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final universityName = meet.universityParentName != null
        ? "${meet.universityParentName} ${meet.universityAcronym != null ? "(${meet.universityAcronym}), " : ", "} ${meet.universityName}"
        : "${meet.universityName} ${meet.universityAcronym != null ? "(${meet.universityAcronym})" : ""}";

    final startedAt = DateTime.fromMillisecondsSinceEpoch(meet.startedAt);
    final endsAt = DateTime.fromMillisecondsSinceEpoch(meet.endsAt);

    return Container(
      color: const Color.fromRGBO(239, 239, 239, 1),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'you are meeting ${meet.username}',
            style: const TextStyle(
                fontSize: 3 * 16,
                color: Color.fromRGBO(63, 66, 84, 1),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, .4),
                        offset: Offset(2, 2),
                        blurRadius: 8,
                        spreadRadius: 1)
                  ]),
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        height: 400 * .3,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                end: Alignment.topRight,
                                colors: [
                                  Color.fromRGBO(226, 47, 47, 1),
                                  Color.fromRGBO(239, 0, 83, 1),
                                  Color.fromRGBO(236, 0, 129, 1),
                                  Color.fromRGBO(209, 0, 185, 1),
                                  Color.fromRGBO(135, 0, 242, 1)
                                ]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 400 - 400 * .3,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "@${meet.username}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 27.2),
                              textAlign: TextAlign.left,
                            ),
                            Text(universityName,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontSize: 14.4,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(63, 66, 84, 1))),
                            meet.universityFaculty != null
                                ? Text(meet.universityFaculty!,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.6,
                                        color: Color.fromRGBO(63, 66, 84, 1)))
                                : const SizedBox.shrink(),
                            Text(
                                "stated at: ${startedAt.day.toTimeDigit()}/${startedAt.month.toTimeDigit()}/${startedAt.year.toTimeDigit()} ${startedAt.hour.toTimeDigit()}:${startedAt.minute.toTimeDigit()}",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    color: Color.fromRGBO(63, 66, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.6)),
                            Text(
                                "ends at: ${endsAt.day.toTimeDigit()}/${endsAt.month.toTimeDigit()}/${endsAt.year.toTimeDigit()} ${endsAt.hour.toTimeDigit()}:${endsAt.minute.toTimeDigit()}",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    color: Color.fromRGBO(63, 66, 84, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.6)),
                            MeetCountdown(
                              endsAt: meet.endsAt,
                              fontSize: 13.6,
                              textAlign: TextAlign.left,
                            ),
                            Material(
                              color: const Color.fromRGBO(63, 66, 84, 1),
                              borderRadius: BorderRadius.circular(6),
                              child: InkWell(
                                onTap: () => print('object'),
                                child: Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: const Text(
                                    'direct message',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 325 * .3 - 50 + 16,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 3, color: Colors.white),
                        image: DecorationImage(
                            image: NetworkImage(meet.profileImage))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
