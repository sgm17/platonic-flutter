import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import '../../../user_repository/src/models/models.dart';
import 'package:platonic/domain/user_repository/src/models/app_user_model.dart';
part 'stories_scroll_model.freezed.dart';
part 'stories_scroll_model.g.dart';

@freezed
class StoriesScroll with _$StoriesScroll {
  const factory StoriesScroll(
      {required AppUser appUser,
      required Faculty faculty,
      @Default("assets/images/36c0815a7435b728898d67811e50214f1bff69e4.png")
          String? backgroundImage}) = _StoriesScroll;

  factory StoriesScroll.fromJson(Map<String, Object?> json) =>
      _$StoriesScrollFromJson(json);
}
