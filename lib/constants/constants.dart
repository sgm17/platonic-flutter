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

final List<FeatureModel> featuresModel = [
  FeatureModel(
    id: 1,
    name: 'Wi-Fi',
    icon: Icons.wifi,
  ),
  FeatureModel(
    id: 2,
    name: 'Air Conditioning',
    icon: Icons.ac_unit,
  ),
  FeatureModel(
    id: 3,
    name: 'Heating',
    icon: Icons.hvac,
  ),
  FeatureModel(
    id: 4,
    name: 'Closet',
    icon: Icons.checkroom,
  ),
  FeatureModel(
    id: 5,
    name: 'Dishwasher',
    icon: Icons.flatware,
  ),
  FeatureModel(
    id: 6,
    name: 'Microwave',
    icon: Icons.microwave,
  ),
  FeatureModel(
    id: 7,
    name: 'Oven',
    icon: Icons.fireplace,
  ),
  FeatureModel(
    id: 8,
    name: 'Refrigerator',
    icon: Icons.kitchen,
  ),
  FeatureModel(
    id: 9,
    name: 'Smoke',
    icon: Icons.smoke_free,
  ),
  FeatureModel(
    id: 10,
    name: 'Elevator',
    icon: Icons.elevator,
  ),
  FeatureModel(
    id: 11,
    name: 'Garage',
    icon: Icons.garage,
  ),
  FeatureModel(
    id: 12,
    name: 'Laundry',
    icon: Icons.local_laundry_service,
  ),
  FeatureModel(
    id: 13,
    name: 'Furnitures',
    icon: Icons.shelves,
  ),
  FeatureModel(
    id: 14,
    name: 'Gym',
    icon: Icons.fitness_center,
  ),
  FeatureModel(
    id: 15,
    name: 'Pool',
    icon: Icons.pool,
  ),
  FeatureModel(
    id: 16,
    name: 'Balcony',
    icon: Icons.balcony,
  ),
  FeatureModel(
    id: 17,
    name: 'Local Library',
    icon: Icons.local_library,
  ),
  FeatureModel(
    id: 18,
    name: 'Terrace',
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
