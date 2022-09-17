import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:platonic/providers/university_provider/university_provider.dart';

final actualLeafletUniversityProvider = StateProvider<University>((ref) {
  final universities = ref.watch(universitiesProvider);
  return universities.first;
});

class LeafletMap extends ConsumerWidget {
  const LeafletMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<List<UniversityFeature>>(
        future: getUniversityFeatures(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final actualLeafletUniversity =
                  ref.watch(actualLeafletUniversityProvider);
              final features = snapshot.data;
              return FlutterMap(
                options: MapOptions(
                    keepAlive: true,
                    center: LatLng(actualLeafletUniversity.center[0],
                        actualLeafletUniversity.center[1]),
                    zoom: 14,
                    minZoom: 14,
                    interactiveFlags: InteractiveFlag.all &
                        ~InteractiveFlag.drag &
                        ~InteractiveFlag.pinchMove &
                        ~InteractiveFlag.flingAnimation &
                        ~InteractiveFlag.rotate),
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
                    userAgentPackageName: 'com.invelex.platonic',
                  ),
                  PolygonLayer(
                      polygons: features?.map((feature) {
                            final universityName = feature
                                        .properties.parentName !=
                                    null
                                ? "${feature.properties.parentName} ${feature.properties.acronym != null ? '(${feature.properties.acronym}), ' : ', '} ${feature.properties.name}"
                                : "${feature.properties.name} ${feature.properties.acronym != null ? '(${feature.properties.acronym})' : ''}";

                            return Polygon(
                                labelPlacement: PolygonLabelPlacement.polylabel,
                                label: universityName,
                                borderStrokeWidth: 4,
                                borderColor: Colors.orange,
                                isFilled: true,
                                color: Colors.orangeAccent,
                                labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                                points: feature.geometry.coordinates[0]
                                    .map((coordinate) =>
                                        LatLng(coordinate[1], coordinate[0]))
                                    .toList());
                          }).toList() ??
                          [])
                ],
              );
            } else {
              return Text(snapshot.error.toString());
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
