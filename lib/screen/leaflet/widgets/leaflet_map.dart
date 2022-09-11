import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:platonic/providers/university_provider/university_provider.dart';

class LeafletMap extends ConsumerWidget {
  const LeafletMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final universities = ref.watch(universitiesProvider);

    return Scaffold(
      body: FutureBuilder<List<UniversityFeature>>(
          future: getUniversityFeatures(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return FlutterMap(
                  options: MapOptions(
                      center: LatLng(41.50613010080779, 2.103939945863225),
                      zoom: 13),
                  nonRotatedChildren: [
                    AttributionWidget.defaultWidget(
                      source: 'OpenStreetMap contributors',
                      onSourceTapped: null,
                    ),
                  ],
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    PolygonLayer(
                        polygons: snapshot.data!.map((feature) {
                      return Polygon(
                          labelPlacement: PolygonLabelPlacement.polylabel,
                          label: feature.properties.name,
                          borderStrokeWidth: 4,
                          borderColor: Colors.orange,
                          isFilled: true,
                          color: Colors.orangeAccent,
                          labelStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                          points: feature.geometry.coordinates[0]
                              .map((coordinate) =>
                                  LatLng(coordinate[1], coordinate[0]))
                              .toList());
                    }).toList())
                  ],
                );
              } else {
                return Text(snapshot.error.toString());
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
