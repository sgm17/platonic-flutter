import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/university_repository/src/models/university_model.dart';

final universitiesProvider =
    Provider<List<University>>((ref) => throw UnimplementedError());

Future<List<University>> getUniversities() async {
  final String data =
      await rootBundle.loadString('assets/universities/universities.json');
  final featureCollection = await jsonDecode(data) as Map<String, dynamic>;
  final features = featureCollection["features"] as List<dynamic>;
  final List<University> universities = features
      .map((feature) => University.fromJson(feature["properties"]))
      .toList();

  return universities;
}
