import 'package:freezed_annotation/freezed_annotation.dart';
part 'flat_image_model.freezed.dart';
part 'flat_image_model.g.dart';

@freezed
abstract class FlatImage with _$FlatImage {
  const factory FlatImage({required String image, required String location}) =
      _FlatImage;

  factory FlatImage.fromJson(Map<String, Object?> json) =>
      _$FlatImageFromJson(json);
}
