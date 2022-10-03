import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_study_model.freezed.dart';
part 'university_study_model.g.dart';

@freezed
abstract class UniversityStudy with _$UniversityStudy {
  const factory UniversityStudy({required String name, required int courses}) =
      _UniversityStudy;

  factory UniversityStudy.fromJson(Map<String, Object?> json) =>
      _$UniversityStudyFromJson(json);
}
