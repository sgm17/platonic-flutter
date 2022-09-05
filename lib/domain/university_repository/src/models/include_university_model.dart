import 'package:freezed_annotation/freezed_annotation.dart';
part 'include_university_model.freezed.dart';
part 'include_university_model.g.dart';

@freezed
abstract class IncludeUniversity with _$IncludeUniversity {
  const factory IncludeUniversity({
    String? associateName,
    String? parentName,
    required String name,
    String? acronym,
    required String type,
    required String address,
  }) = _IncludeUniversity;

  factory IncludeUniversity.fromJson(Map<String, Object?> json) =>
      _$IncludeUniversityFromJson(json);
}
