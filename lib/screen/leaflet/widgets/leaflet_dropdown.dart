import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:platonic/screen/leaflet/widgets/leaflet_map.dart';

class LeafletDropdown extends ConsumerWidget {
  const LeafletDropdown({Key? key, required this.universities})
      : super(key: key);
  final List<University> universities;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<University>(
        isExpanded: true,
        value: ref.watch(actualLeafletUniversityProvider),
        icon: const Icon(
          Icons.expand_more,
        ),
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        onChanged: (University? value) {
          ref.read(actualLeafletUniversityProvider.state).state = value!;
        },
        items: universities.map((s) {
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
