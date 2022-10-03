import 'package:freezed_annotation/freezed_annotation.dart';
part 'particular_lessor_model.freezed.dart';
part 'particular_lessor_model.g.dart';

@freezed
abstract class ParticularLessor with _$ParticularLessor {
  const factory ParticularLessor({
    required int id,
    required String name,
    required String telephone,
    required int flatReference,
  }) = _ParticularLessor;

  factory ParticularLessor.fromJson(Map<String, Object?> json) =>
      _$ParticularLessorFromJson(json);
}
