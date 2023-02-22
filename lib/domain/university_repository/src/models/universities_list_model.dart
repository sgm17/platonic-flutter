import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domain/university_repository/src/models/faculties_list_model.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
part 'universities_list_model.freezed.dart';

@freezed
class UniversitiesList with _$UniversitiesList {
  const factory UniversitiesList(
      {required University university,
      required List<FacultiesList> faculties}) = _UniversitiesList;

  static Future<List<UniversitiesList>> getUniversities() async {
    final data =
        await rootBundle.loadString('assets/universities/universities.json');
    final json = await jsonDecode(data) as List<dynamic>;

    final universities = json.map((e) => UniversitiesList.fromJson(e)).toList();

    return universities;
  }

  factory UniversitiesList.fromJson(Map<String, dynamic> json) {
    final facultiesJson = json['faculties'] as List<dynamic>;
    final faculties = facultiesJson
        .map((facultyJson) =>
            FacultiesList.fromJson(facultyJson as Map<String, dynamic>))
        .toList();

    return UniversitiesList(
      university: University(
          id: json['id'] as int,
          name: json['name'] as String,
          simpleName: json['simpleName'] as String),
      faculties: faculties,
    );
  }
}
