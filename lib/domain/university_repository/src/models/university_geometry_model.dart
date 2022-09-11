import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_geometry_model.freezed.dart';
part 'university_geometry_model.g.dart';

@freezed
abstract class UniversityGeometry with _$UniversityGeometry {
  const factory UniversityGeometry(
      {required String type,
      required List<List<List<double>>> coordinates}) = _UniversityGeometry;

  factory UniversityGeometry.fromJson(Map<String, Object?> json) =>
      _$UniversityGeometryFromJson(json);
}
