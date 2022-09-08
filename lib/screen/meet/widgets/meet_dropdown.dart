import 'package:flutter/material.dart';
import 'package:platonic/domain/user_repository/src/models/models.dart';

class MeetDropdown extends StatefulWidget {
  const MeetDropdown({Key? key, required this.select}) : super(key: key);

  final List<dynamic> select;

  @override
  State<MeetDropdown> createState() => _MeetDropdownState();
}

class _MeetDropdownState extends State<MeetDropdown> {
  @override
  Widget build(BuildContext context) {
    dynamic dropDrownValue = widget.select.first;

    return DropdownButton<dynamic>(
        value: dropDrownValue,
        icon: const Icon(
          Icons.expand_more,
        ),
        elevation: 16,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        onChanged: (dynamic value) {
          setState(() {
            dropDrownValue = value;
          });
        },
        items: widget.select.map((s) {
          final childText = s is Sex
              ? s.name
              : s.parentName
                  ? "${s.parentName} ${s.acronym != null ? '(${s.acronym}), ' : ', '} ${s.name}"
                  : "${s.name} ${s.acronym != null ? '(${s.acronym})' : ''}";
          return DropdownMenuItem<dynamic>(value: s, child: Text(childText));
        }).toList());
  }
}
