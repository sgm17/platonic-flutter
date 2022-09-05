import '../../../university_repository/src/models/models.dart';
import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_story_model.freezed.dart';

@freezed
abstract class HomeStory with _$HomeStory {
  const factory HomeStory(
      {required List<LastStoryIdsPerUniversity> lastStoryIdsPerUniversity,
      University? university,
      required List<Story> stories}) = _HomeStory;
}
