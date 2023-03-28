import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'widgets.dart';

class CreateFlatMap extends ConsumerWidget {
  const CreateFlatMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapControllerState = ref.watch(mapControllerProvider);

    return FlutterMap(
      mapController: mapControllerState,
      options: MapOptions(
          center: LatLng(41.434509, 2.221195),
          zoom: 15.0,
          interactiveFlags: ~InteractiveFlag.all),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.invelex.platonic',
        ),
        const CreateFlatMapMarkerLayer()
      ],
    );
  }
}
