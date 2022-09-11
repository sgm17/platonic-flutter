import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'university_feature_model.freezed.dart';
part 'university_feature_model.g.dart';

@freezed
abstract class UniversityFeature with _$UniversityFeature {
  const factory UniversityFeature(
      {required String type,
      required University properties,
      required UniversityGeometry geometry}) = _UniversityFeature;

  factory UniversityFeature.fromJson(Map<String, Object?> json) =>
      _$UniversityFeatureFromJson(json);
}
