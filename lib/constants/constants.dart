// SharedPreferences Key
import 'package:flutter/material.dart';

const FIRST_TIME_USING_APP_KEY = "FIRST_TIME_USING_APP_KEY";

// Api Endpoint
const API_ENDPOINT = "http://192.168.1.19:3000/api/v1";
// const API_ENDPOINT = "http://10.0.2.2:3000/api/v1";

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
