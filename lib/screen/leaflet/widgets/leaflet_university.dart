import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screen/home/widgets/story_image.dart';
import 'package:platonic/screen/leaflet/widgets/leaflet_map.dart';

class LeafletUniversity extends ConsumerWidget {
  const LeafletUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final actualLeafletUniversity = ref.watch(actualLeafletUniversityProvider);
    final universityName = actualLeafletUniversity.parentName != null
        ? "${actualLeafletUniversity.parentName} ${actualLeafletUniversity.acronym != null ? '(${actualLeafletUniversity.acronym}), ' : ', '} ${actualLeafletUniversity.name}"
        : "${actualLeafletUniversity.name} ${actualLeafletUniversity.acronym != null ? '(${actualLeafletUniversity.acronym})' : ''}";

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: AssetImage(
                    getUniversityImage(UniversityImage.values.firstWhere(
                        (uni) =>
                            uni.name ==
                            actualLeafletUniversity.image.split('.')[0])),
                  ),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          universityName,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
