import 'package:freezed_annotation/freezed_annotation.dart';
part 'study_model.g.dart';
part 'study_model.freezed.dart';

@freezed
class Study with _$Study {
  const factory Study({required String name, required int courses}) = _Study;

  factory Study.fromJson(Map<String, Object?> json) => _$StudyFromJson(json);
}
