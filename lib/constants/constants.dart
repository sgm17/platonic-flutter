// SharedPreferences Key
import 'package:flutter/material.dart';

const FIRST_TIME_USING_APP_KEY = "FIRST_TIME_USING_APP_KEY";
const FIREBASE_TOKEN_ID_KEY = "FIREBASE_TOKEN_ID_KEY";
const MEET_LAST_USER_ID_KEY = "MEET_LAST_USER_ID_KEY";

// Api Endpoint
const API_ENDPOINT = "http://10.0.2.2:3000/api/v1";
const ACTION_CABLE_ENDPOINT = "ws://10.0.2.2:3000/cable";
// const API_ENDPOINT = "http://35.180.234.87:80/api/v1";
// const ACTION_CABLE_ENDPOINT = "ws://35.180.234.87:80/cable";

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
