import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

class CreateFlatMapMarkerLayer extends ConsumerWidget {
  const CreateFlatMapMarkerLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.watch(flatCreateProvider);

    final latLng =
        LatLng(flatCreateState.geometry[1], flatCreateState.geometry[0]);

    return MarkerLayer(
      markers: [
        Marker(
          point: latLng,
          builder: (context) => const Icon(
            Icons.location_on,
            color: Colors.red,
            size: 40.0,
          ),
        ),
      ],
    );
  }
}
