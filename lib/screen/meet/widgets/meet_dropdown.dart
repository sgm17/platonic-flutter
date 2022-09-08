import 'package:flutter/material.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:platonic/domain/user_repository/src/models/models.dart';

class MeetDropdown extends StatefulWidget {
  const MeetDropdown({Key? key, required this.select}) : super(key: key);

  final List<dynamic> select;

  @override
  State<MeetDropdown> createState() => _MeetDropdownState();
}

class _MeetDropdownState extends State<MeetDropdown> {
  late dynamic dropDrownValue;

  @override
  void initState() {
    super.initState();
    dropDrownValue = widget.select.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<dynamic>(
        isExpanded: true,
        value: dropDrownValue,
        icon: const Icon(
          Icons.expand_more,
        ),
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        onChanged: (dynamic value) {
          setState(() {
            dropDrownValue = value;
          });
        },
        items: widget.select.map((s) {
          if (s is Sex) {
            return DropdownMenuItem<Sex>(value: s, child: Text(s.name));
          }

          final universityName = s.parentName != null
              ? "${s.parentName} ${s.acronym != null ? '(${s.acronym}), ' : ', '} ${s.name}"
              : "${s.name} ${s.acronym != null ? '(${s.acronym})' : ''}";

          return DropdownMenuItem<University>(
              value: s,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  universityName,
                  textAlign: TextAlign.left,
                ),
              ));
        }).toList());
  }
}
