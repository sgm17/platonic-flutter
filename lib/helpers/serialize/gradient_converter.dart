import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:platonic/constants/constants.dart';

class LinearGradientConverter implements JsonConverter<LinearGradient, int> {
  const LinearGradientConverter();

  @override
  LinearGradient fromJson(int index) {
    return gradients[index];
  }

  @override
  int toJson(LinearGradient gradient) {
    return gradients.indexOf(gradient);
  }
}
