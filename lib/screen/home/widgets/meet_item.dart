import 'package:flutter/material.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/domain/meet_repository/src/models/models.dart';
import 'package:platonic/extensions/timestamp_extension.dart';
import 'package:platonic/screen/home/widgets/meet_countdown.dart';
import 'dart:async';

class MeetItem extends StatefulWidget {
  const MeetItem({Key? key, required this.meetItemProperties})
      : super(key: key);

  final MeetItemProperties meetItemProperties;

  @override
  State<MeetItem> createState() => _MeetItemState();
}

class _MeetItemState extends State<MeetItem> {
  late bool active;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    final difference = widget.meetItemProperties.meet.endsAt -
        DateTime.now().millisecondsSinceEpoch;
    active = difference > 0;

    timer = Timer(Duration(milliseconds: difference), () {
      setState(() {
        active = false;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final meet = widget.meetItemProperties.meet;
    final universityText =
        "${meet.universityParentName ?? meet.universityName} ${meet.universityAcronym ?? ''}";
    final facultyText =
        "${meet.universityParentName != null ? meet.universityName : ''} ${meet.universityFaculty ?? ''}";
    final startedAt = DateTime.fromMillisecondsSinceEpoch(meet.startedAt);
    final endsAt = DateTime.fromMillisecondsSinceEpoch(meet.endsAt);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 280,
          height: 400,
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6.0),
              boxShadow: [
                BoxShadow(
                    color: AppColors.black.withOpacity(.4),
                    offset: const Offset(2, 2),
                    blurRadius: 8,
                    spreadRadius: 1)
              ]),
          margin: EdgeInsets.only(
              bottom: 16,
              top: 16,
              left: widget.meetItemProperties.first ? 32 : 16,
              right: widget.meetItemProperties.last ? 32 : 16),
          child: Column(
            children: [
              Container(
                height: 400 * .3,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    gradient: active
                        ? const LinearGradient(
                            end: Alignment.topRight,
                            colors: AppColors.meetCardColors)
                        : const LinearGradient(
                            end: Alignment.topRight,
                            colors: AppColors.meetCardDisabledColors)),
              ),
              Container(
                  padding: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: SizedBox(
                      height: 400 - 400 * .3 - 64 - 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.meetItemProperties.meet.username,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                            textAlign: TextAlign.center,
                          ),
                          Text(universityText,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColors.meetCountdown,
                                  fontSize: 11.2,
                                  fontWeight: FontWeight.w400)),
                          facultyText != " "
                              ? Text(facultyText,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 10.4,
                                      color: AppColors.meetCountdown,
                                      fontWeight: FontWeight.w400))
                              : const SizedBox.shrink(),
                          Text(
                            "${startedAt.toDate()} - ${endsAt.toDate()}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.8,
                                color: AppColors.meetCountdown),
                            textAlign: TextAlign.center,
                          ),
                          active
                              ? MeetCountdown(endsAt: meet.endsAt)
                              : Text(
                                  "the meet has ended with ${meet.messagesCount} ${meet.messagesCount <= 1 ? 'message' : 'messages'}",
                                  style: const TextStyle(
                                      fontSize: 12.8,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.meetCountdown),
                                  textAlign: TextAlign.center),
                          Material(
                            borderRadius: BorderRadius.circular(6),
                            color:
                                active ? AppColors.mainColor : AppColors.grey,
                            child: InkWell(
                              onTap: active ? () => print('object') : null,
                              child: Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.4),
                                child: Text(
                                  active ? 'start meeting' : 'continue meeting',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          left: widget.meetItemProperties.first ? 32 + 140 - 50 : 16 + 140 - 50,
          top: 16 + 400 * .3 - 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
                'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png',
                fit: BoxFit.cover,
                width: 100,
                height: 100),
          ),
        )
      ],
    );
  }
}

class MeetItemProperties {
  final bool first;
  final bool last;
  final Meet meet;

  MeetItemProperties(this.first, this.last, this.meet);
}
