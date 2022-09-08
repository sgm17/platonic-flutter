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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'you are meeting ${meet.username}',
          style: const TextStyle(
              color: Color.fromRGBO(63, 66, 84, 1),
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 325,
                child: Column(
                  children: [
                    Container(
                      height: 325 * .3,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 325 - 325 * .3,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6))),
                      child: Column(
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
                          InkWell(
                            onTap: () => print('object'),
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(63, 66, 84, 1)),
                              child: const Text(
                                'direct message',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12),
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
                top: 325 * .3 - 50,
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
    );
  }
}
