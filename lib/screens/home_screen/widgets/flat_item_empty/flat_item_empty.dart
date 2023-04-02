import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:platonic/constants/constants.dart';

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
                  title: emptyFlatHome.title,
                  bathroom: emptyFlatHome.bathroom,
                  bedroom: emptyFlatHome.bedroom,
                  electricityPriceInCents:
                      emptyFlatHome.electricityPriceInCents,
                  rentPricePerMonthInCents:
                      emptyFlatHome.rentPricePerMonthInCents,
                  properties: emptyFlatHome.properties))
        ],
      ),
    );
  }
}
