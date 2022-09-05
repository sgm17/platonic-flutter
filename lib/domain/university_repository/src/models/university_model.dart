import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.freezed.dart';

@freezed
abstract class University with _$University {
  const factory University(
      {required int id,
      String? acronym,
      required String type,
      String? associateName,
      String? parentName,
      required String name,
      required String address,
      required String simple,
      required List<int> center,
      required String image,
      required IncludeUniversity? includes}) = _University;
}
