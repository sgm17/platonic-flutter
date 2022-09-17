import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';

final universitiesProvider =
    Provider<List<University>>((ref) => throw UnimplementedError());

Future<List<UniversityFeature>> getUniversityFeatures() async {
  final String data =
      await rootBundle.loadString('assets/universities/universities.json');
  final featureCollection = await jsonDecode(data) as Map<String, dynamic>;
  final features = featureCollection["features"] as List<dynamic>;

  final polygons = features
      .where((feature) => feature["geometry"]["type"] == "Polygon")
      .toList();

  final List<UniversityFeature> polygonUniversities =
      polygons.map((feature) => UniversityFeature.fromJson(feature)).toList();

  final multiPolygons = features
      .where((feature) => feature["geometry"]["type"] == "MultiPolygon");

  final List<UniversityFeature> multiPolygonUniversities = [];

  for (var multiPolygon in multiPolygons) {
    final newMultiPolygon = multiPolygon;

    for (var coordinate in multiPolygon["geometry"]["coordinates"]) {
      newMultiPolygon["geometry"]["coordinates"] = coordinate;
    }
    multiPolygonUniversities.add(UniversityFeature.fromJson(newMultiPolygon));
  }

  return polygonUniversities + multiPolygonUniversities;
}

Future<List<University>> getUniversities(
    {required List<double> userUniversityCenter}) async {
  final String data =
      await rootBundle.loadString('assets/universities/universities.json');
  final featureCollection = await jsonDecode(data) as Map<String, dynamic>;
  final features = featureCollection["features"] as List<dynamic>;
  final List<University> universities = features
      .map((feature) => University.fromJson(feature["properties"]))
      .toList();

  if (userUniversityCenter != null) {
    universities
        .sort((a, b) => orderUniversitiesPerCenter(a, b, userUniversityCenter));
  }

  return universities;
}

int orderUniversitiesPerCenter(
    University a, University b, List<double> userUniversityCenter) {
  const distance = Distance();
  final userCenter = LatLng(userUniversityCenter[0], userUniversityCenter[1]);

  final universityACenter = LatLng(a.center[0], a.center[1]);
  final universityBCenter = LatLng(b.center[0], b.center[1]);

  return distance(userCenter, universityACenter)
      .compareTo(distance(userCenter, universityBCenter));
}
