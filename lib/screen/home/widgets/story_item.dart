import 'package:flutter/material.dart';
import 'package:platonic/screen/home/widgets/story_image.dart';
import '../../../domain/university_repository/src/models/models.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key, required this.storyItemProperties})
      : super(key: key);

  final StoryItemProperties storyItemProperties;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: storyItemProperties.first ? 32 : 8,
          right: storyItemProperties.last ? 32 : 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(5.0),
            onTap: () => print('object'),
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: !storyItemProperties.content ? Colors.white : null,
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: storyItemProperties.content
                      ? const LinearGradient(colors: [
                          Color.fromRGBO(218, 51, 148, 1),
                          Color.fromRGBO(224, 60, 103, 1),
                          Color.fromRGBO(243, 117, 59, 1),
                          Color.fromRGBO(249, 155, 74, 1)
                        ])
                      : null),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: storyItemProperties.content
                        ? Border.all(width: 2.0, color: Colors.white)
                        : Border.all(width: 2.0, color: Colors.transparent),
                    color: const Color.fromRGBO(252, 252, 252, 1),
                    image: DecorationImage(
                        image: AssetImage(getUniversityImage(
                            UniversityImage.values.firstWhere((uni) =>
                                uni.name ==
                                storyItemProperties.university.image
                                    .split('.')[0]))))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              width: 60,
              child: Text(storyItemProperties.university.simple,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10.4,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class StoryItemProperties {
  final University university;
  final bool content;
  final bool first;
  final bool last;

  StoryItemProperties(
    this.university,
    this.content,
    this.first,
    this.last,
  );
}
