import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/screen/instastory/insta_story_screen.dart';
import '../../../domain/university_repository/src/models/models.dart';

class StoryItem extends ConsumerWidget {
  const StoryItem({Key? key, required this.storyItemProperties})
      : super(key: key);

  final StoryItemProperties storyItemProperties;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(
          left: storyItemProperties.first ? 16 : 10,
          right: storyItemProperties.last ? 16 : 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(5.0),
            onTap: () async {
              final universityId = storyItemProperties.university.id;

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      InstaStory(universityId: universityId)));
            },
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: !storyItemProperties.content ? AppColors.white : null,
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: storyItemProperties.content
                      ? const LinearGradient(colors: AppColors.storyItemColors)
                      : null),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: storyItemProperties.content
                        ? Border.all(width: 2.0, color: AppColors.white)
                        : Border.all(width: 2.0, color: Colors.transparent),
                    color: AppColors.strongWhite,
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/uni/${storyItemProperties.university.image}"),
                        fit: BoxFit.contain)),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 60,
            child: Text(storyItemProperties.university.simpleName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10.4,
                )),
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
