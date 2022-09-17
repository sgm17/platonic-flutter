import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/providers/university_provider/university_provider.dart';
import 'package:platonic/screen/leaflet/widgets/widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../domain/university_repository/src/models/models.dart';

class Leaflet extends ConsumerWidget {
  const Leaflet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double _maxHeight = MediaQuery.of(context).size.height * .8;
    const double _minHeight = 95.0;

    final universities = ref.watch(universitiesProvider);

    return Scaffold(
        body: SlidingUpPanel(
      panel: _panel(universities),
      body: const LeafletMap(),
      maxHeight: _maxHeight,
      minHeight: _minHeight,
      parallaxEnabled: true,
      parallaxOffset: .5,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18), topRight: Radius.circular(18)),
    ));
  }

  Widget _panel(List<University> universities) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 40,
                height: 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              LeafletDropdown(universities: universities),
              const SizedBox(
                height: 40,
              ),
              const LeafletUniversity()
            ],
          ),
          Material(
            color: const Color.fromRGBO(226, 47, 47, 1),
            borderRadius: BorderRadius.circular(6),
            child: InkWell(
              onTap: () => print('object'),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: const Text('select university',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
