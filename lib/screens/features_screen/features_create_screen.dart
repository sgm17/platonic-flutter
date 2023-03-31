import 'package:flutter/material.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'widgets/widgets.dart';

/* Frame features
    Autogenerated by FlutLab FTF Generator
  */
class FeaturesCreateScreen extends StatelessWidget {
  const FeaturesCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25.0,
                      child: NavigateBefore(
                        color: Color.fromARGB(255, 255, 255, 255),
                        title: 'Features',
                      ),
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        (featuresModel.length / 2).ceil(),
                        (index) {
                          final start = index * 2;
                          final end = start + 2;
                          final features =
                              featuresModel.sublist(start, end).toList();
                          return Container(
                            margin: EdgeInsets.only(
                                bottom: index ==
                                        (featuresModel.length / 2).ceil() - 1
                                    ? 0
                                    : 10),
                            child: Row(
                              children: [
                                if (features.isNotEmpty)
                                  FeatureItemContainer(
                                    featureModel: features[0],
                                  ),
                                if (features.length > 1)
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                if (features.length > 1)
                                  FeatureItemContainer(
                                    featureModel: features[1],
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
