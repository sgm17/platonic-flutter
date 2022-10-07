import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';

final backgroundProvider = StateProvider<Color>((ref) {
  return AppColors.createBackgroundColors.first;
});
