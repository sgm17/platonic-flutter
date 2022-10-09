import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import 'package:platonic/providers/flat_provider/flat_location_university_provider.dart';
import 'package:platonic/screen/flat/widgets/flat_map_screen.dart';
import '../../../domain/flat_repository/src/models/models.dart';
import '../../../providers/flat_provider/flat_provider.dart';

class FlatLocation extends ConsumerWidget {
  const FlatLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    final flatLocationUniversity = ref
        .watch(flatLocationUniversityProvider(flat.universityTransports.first));
    final mapController = ref.watch(flatMapControllerProvider);

    return SizedBox(
      height: 570,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('what is the address of the flat?',
              style: TextStyle(
                  color: AppColors.navyBlueTitle,
                  fontSize: 20,
                  fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: flat.universityTransports.length,
              itemBuilder: (context, index) {
                final universityTransport = flat.universityTransports[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: universityTransport == flatLocationUniversity
                                ? AppColors.strongWhite
                                : AppColors.softWhite)),
                    width: 365,
                    child: InkWell(
                      onTap: () {
                        ref
                            .read(flatLocationUniversityProvider(
                                    flat.universityTransports.first)
                                .notifier)
                            .state = universityTransport;
                        mapController.move(
                            LatLng(flat.coordinates[0], flat.coordinates[1]),
                            13);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            universityTransport.universityName,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: universityTransport ==
                                        flatLocationUniversity
                                    ? AppColors.navyBlueTitle
                                    : AppColors.softWhite,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                              children: universityTransport.transports
                                  .map((e) => _buildTransport(
                                        e,
                                        universityTransport ==
                                            flatLocationUniversity,
                                      ))
                                  .toList()),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
                height: 218,
                width: double.infinity,
                child: FlutterMap(
                    mapController: mapController,
                    options: MapOptions(
                      zoom: 11,
                      onTap: (tapPosition, point) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FlatMapScreen(
                                flat: flat,
                                universityTransport: flatLocationUniversity)));
                      },
                      center: LatLng(flat.coordinates[0], flat.coordinates[1]),
                    ),
                    children: _buildMapChildren(flat, flatLocationUniversity))),
          ),
          const SizedBox(height: 16),
          Text("${flat.city}, ${flat.hood}",
              style: const TextStyle(
                  color: AppColors.navyBlueTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 6)
        ],
      ),
    );
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

  Widget _buildTransport(
    Transport transport,
    bool actualUniversity,
  ) {
    final text = transport.vehicle == Vehicle.walking
        ? "Walk during ${transport.durationMinutes} min"
        : "From ${transport.name} to ${transport.destinationName} towards ${transport.directionName} ${transport.durationMinutes} min ${transport.stops != null ? ("(${transport.stops} ${transport.stops! > 1 ? "stops" : "stop"})") : ''} by ${transport.vehicle.name}";

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              alignment: Alignment.center,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  shape: BoxShape.rectangle,
                  color: transport.color ?? AppColors.black),
              child: transport.acronym != null
                  ? Text(
                      transport.acronym!,
                      style: const TextStyle(fontSize: 10),
                    )
                  : transport.vehicle == Vehicle.walking
                      ? const Icon(
                          Icons.directions_walk_outlined,
                          color: AppColors.white,
                          size: 12,
                        )
                      : const SizedBox.shrink(),
            ),
            const SizedBox(
              width: 6,
            ),
            Flexible(
              child: Text(text,
                  style: TextStyle(
                      color: actualUniversity
                          ? AppColors.navyBlueTitle
                          : AppColors.softWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            )
          ],
        ),
        const SizedBox(
          height: 6,
        )
      ],
    );
  }
}
