import 'package:flutter/material.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';

const FIRST_TIME_USING_APP_KEY = "FIRST_TIME_USING_APP_KEY";
const FIREBASE_TOKEN_ID_KEY = "FIREBASE_TOKEN_ID_KEY";
const MEET_LAST_USER_ID_KEY = "MEET_LAST_USER_ID_KEY";

const List<IconData> transportationIcons = [
  Icons.directions_train,
  Icons.directions_bus,
  Icons.directions_car,
  Icons.directions_walk,
];

const List<String> transportationNames = [
  "directions_train",
  "directions_bus",
  "directions_car",
  "directions_walk"
];

final List<double> emptyGeometry = [2.170056412042614, 41.3869926501536];

final List<FeatureModel> featuresModel = [
  FeatureModel(
    id: 1,
    name: 'feature_wifi',
    icon: Icons.wifi,
  ),
  FeatureModel(
    id: 2,
    name: 'feature_air_conditioning',
    icon: Icons.ac_unit,
  ),
  FeatureModel(
    id: 3,
    name: 'feature_eating',
    icon: Icons.hvac,
  ),
  FeatureModel(
    id: 4,
    name: 'feature_closet',
    icon: Icons.checkroom,
  ),
  FeatureModel(
    id: 5,
    name: 'feature_dishwasher',
    icon: Icons.flatware,
  ),
  FeatureModel(
    id: 6,
    name: 'feature_microwave',
    icon: Icons.microwave,
  ),
  FeatureModel(
    id: 7,
    name: 'feature_oven',
    icon: Icons.fireplace,
  ),
  FeatureModel(
    id: 8,
    name: 'feature_refrigerator',
    icon: Icons.kitchen,
  ),
  FeatureModel(
    id: 9,
    name: 'feature_smoke',
    icon: Icons.smoke_free,
  ),
  FeatureModel(
    id: 10,
    name: 'feature_elevator',
    icon: Icons.elevator,
  ),
  FeatureModel(
    id: 11,
    name: 'feature_garage',
    icon: Icons.garage,
  ),
  FeatureModel(
    id: 12,
    name: 'Laundry',
    icon: Icons.local_laundry_service,
  ),
  FeatureModel(
    id: 13,
    name: 'feature_furnitures',
    icon: Icons.shelves,
  ),
  FeatureModel(
    id: 14,
    name: 'feature_gym',
    icon: Icons.fitness_center,
  ),
  FeatureModel(
    id: 15,
    name: 'feature_pool',
    icon: Icons.pool,
  ),
  FeatureModel(
    id: 16,
    name: 'feature_balcony',
    icon: Icons.balcony,
  ),
  FeatureModel(
    id: 17,
    name: 'feature_local_library',
    icon: Icons.local_library,
  ),
  FeatureModel(
    id: 18,
    name: 'feature_terrace',
    icon: Icons.deck,
  ),
];

List<LinearGradient> gradients = [
  const LinearGradient(
    colors: [
      Color(0xFFFE2A55),
      Color(0xFFFFFD74),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [
      Color(0xFF2193B0),
      Color(0xFF6DD5ED),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [
      Color(0xFFB721FF),
      Color(0xFFFF1D00),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [
      Color(0xFF00B4DB),
      Color(0xFF0083B0),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(colors: [
    Color(0xFF8A2BE2),
    Color(0xFF1E90FF),
  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
  const LinearGradient(
      colors: [Colors.pinkAccent, Colors.purpleAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight),
  const LinearGradient(
      colors: [Colors.orangeAccent, Colors.redAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight),
  const LinearGradient(
      colors: [Colors.blueAccent, Colors.purpleAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight)
];
