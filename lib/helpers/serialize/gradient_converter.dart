import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class LinearGradientConverter
    implements JsonConverter<LinearGradient, Map<String, dynamic>> {
  const LinearGradientConverter();

  @override
  LinearGradient fromJson(Map<String, dynamic> json) {
    final List<dynamic> colors = json['colors'] ?? [];
    final List<Color> gradientColors = [];

    for (int i = 0; i < colors.length; i++) {
      gradientColors.add(Color(colors[i]));
    }

    final AlignmentGeometry begin = _parseAlignment(json['begin'] ?? 'topLeft');
    final AlignmentGeometry end = _parseAlignment(json['end'] ?? 'bottomRight');

    return LinearGradient(
      colors: gradientColors,
      begin: begin,
      end: end,
    );
  }

  @override
  Map<String, dynamic> toJson(LinearGradient gradient) {
    final List<int> colors = gradient.colors.map((c) => c.value).toList();

    return {
      'colors': colors,
      'begin': _alignmentToString(gradient.begin),
      'end': _alignmentToString(gradient.end),
    };
  }

  static AlignmentGeometry _parseAlignment(String value) {
    switch (value) {
      case 'topLeft':
        return const Alignment(-1.0, -1.0);
      case 'topCenter':
        return const Alignment(0.0, -1.0);
      case 'topRight':
        return const Alignment(1.0, -1.0);
      case 'centerLeft':
        return const Alignment(-1.0, 0.0);
      case 'center':
        return const Alignment(0.0, 0.0);
      case 'centerRight':
        return const Alignment(1.0, 0.0);
      case 'bottomLeft':
        return const Alignment(-1.0, 1.0);
      case 'bottomCenter':
        return const Alignment(0.0, 1.0);
      case 'bottomRight':
        return const Alignment(1.0, 1.0);
      default:
        throw ArgumentError.value(value, 'value', 'Invalid alignment value');
    }
  }

  static String _alignmentToString(AlignmentGeometry alignment) {
    if (alignment is Alignment) {
      return alignment.toString();
    } else if (alignment is AlignmentDirectional) {
      return alignment.toString();
    } else {
      throw ArgumentError.value(
          alignment, 'alignment', 'Invalid alignment type');
    }
  }
}
