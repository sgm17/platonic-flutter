import 'package:json_annotation/json_annotation.dart';

enum Currency {
  @JsonValue(0)
  eur,

  @JsonValue(1)
  mxn,

  @JsonValue(2)
  cop
}
