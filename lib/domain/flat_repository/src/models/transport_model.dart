import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transport_model.freezed.dart';
part 'transport_model.g.dart';

@freezed
abstract class Transport with _$Transport {
  const factory Transport({
    required String name,
    String? directionName,
    String? destinationName,
    required int durationMinutes,
    int? stops,
    String? acronym,
    required Vehicle vehicle,
    required List<List<double>> points,
    @ColorSerialiser() Color? color,
  }) = _Transport;

  factory Transport.fromJson(Map<String, Object?> json) =>
      _$TransportFromJson(json);
}

class ColorSerialiser implements JsonConverter<Color, int> {
  const ColorSerialiser();

  @override
  Color fromJson(int color) => Color(color);

  @override
  int toJson(Color color) => color.value;
}

enum Vehicle { walking, train, underground, bus }
