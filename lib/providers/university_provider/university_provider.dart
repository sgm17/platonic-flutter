import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';

final universitiesProvider =
    Provider<List<University>>((ref) => throw UnimplementedError());

Future<List<University>> getUniversities() async {
  final String data =
      await rootBundle.loadString('assets/universities/universities.json');
  final json = await jsonDecode(data) as List<dynamic>;

  final universities = json.map((e) => University.fromJson(e)).toList();

  final userUniversityCenter = [41.50613010080779, 2.103939945863225];

  universities
      .sort((a, b) => orderUniversitiesPerCenter(a, b, userUniversityCenter));

  return universities;
}

int orderUniversitiesPerCenter(
    University a, University b, List<double> userUniversityCenter) {
  const distance = Distance();
  final userCenter = LatLng(userUniversityCenter[0], userUniversityCenter[1]);

  final universityACenter = LatLng(a.coordinates[0], a.coordinates[1]);
  final universityBCenter = LatLng(b.coordinates[0], b.coordinates[1]);

  return distance(userCenter, universityACenter)
      .compareTo(distance(userCenter, universityBCenter));
}
