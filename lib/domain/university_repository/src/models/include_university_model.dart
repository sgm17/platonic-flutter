import 'package:freezed_annotation/freezed_annotation.dart';
part 'include_university_model.freezed.dart';

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
}
