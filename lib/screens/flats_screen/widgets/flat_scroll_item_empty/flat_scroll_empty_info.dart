import 'package:platonic/screens/flats_screen/widgets/widgets.dart';
import 'package:platonic/constants/constants.dart';
import 'package:flutter/material.dart';

class FlatScrollEmptyInfo extends StatelessWidget {
  const FlatScrollEmptyInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: FlatScrollTitle(
            title: emptyFlatsScrollModel.title,
          ),
        ),
        Expanded(
          child: FlatScrollDirectionTitle(
            name: emptyFlatsScrollModel.properties.name,
            city: emptyFlatsScrollModel.properties.city,
            state: emptyFlatsScrollModel.properties.state,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatAmenities(
                bathroom: emptyFlatsScrollModel.bathroom,
                bedroom: emptyFlatsScrollModel.bedroom,
                built: emptyFlatsScrollModel.built,
              ),
              Flexible(
                  child: FlatScrollMonthlyPrice(
                rentPricePerMonthInCents:
                    emptyFlatsScrollModel.rentPricePerMonthInCents,
              ))
            ],
          ),
        ),
      ]),
    );
  }
}
