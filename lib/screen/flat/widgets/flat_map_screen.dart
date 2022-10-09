import '../../../domain/flat_repository/src/models/models.dart';
import 'package:platonic/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FlatMapScreen extends StatelessWidget {
  const FlatMapScreen(
      {Key? key, required this.flat, required this.universityTransport})
      : super(key: key);
  final Flat flat;
  final UniversityTransport universityTransport;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        FlutterMap(
            options: MapOptions(
              center: LatLng(flat.coordinates[0], flat.coordinates[1]),
            ),
            children: _buildMapChildren(flat, universityTransport)),
        Positioned(
          top: 16,
          left: 16,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.keyboard_arrow_left_outlined, size: 30),
          ),
        ),
      ],
    )));
  }

  List<Widget> _buildMapChildren(
      Flat flat, UniversityTransport actualUniversity) {
    final List<Widget> ret = [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'com.invelex.platonic',
      ),
      MarkerLayer(
        markers: [
          Marker(
              point: LatLng(flat.coordinates[0], flat.coordinates[1]),
              builder: (context) =>
                  const Icon(Icons.location_on, color: Colors.red, size: 12))
        ],
      ),
    ];

    ret.add(PolylineLayer(
      polylines: actualUniversity.transports
          .map((transport) => Polyline(
              isDotted: transport.vehicle == Vehicle.walking,
              color: transport.color ?? AppColors.black,
              strokeWidth: 4,
              points: transport.points
                  .map((point) => LatLng(point[0], point[1]))
                  .toList()))
          .toList(),
    ));

    return ret;
  }
}
