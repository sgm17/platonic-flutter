import 'package:flutter/material.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

class FlatItemEmpty extends StatelessWidget {
  const FlatItemEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.0,
      child: Row(
        children: [
          const SizedBox(
            height: 110.0,
            width: 110.0,
            child: FlatItemEmptyImage(),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Expanded(
              child: FlatItemContent(
                  title: 'Student Flat With Pool',
                  bathroom: '''1''',
                  bedroom: '''2''',
                  electricityPriceInCents: 5000,
                  rentPricePerMonthInCents: 25000,
                  properties: PropertyModel(
                      country: 'Spain',
                      city: '''Platja d'Aro''',
                      countrycode: 'ES',
                      postcode: "17250",
                      county: null,
                      housenumber: 'housenumber',
                      name: 'Av. Costa Braca',
                      state: 'Girona')))
        ],
      ),
    );
  }
}
