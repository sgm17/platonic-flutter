import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domain/user_repository/src/models/models.dart';
part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class Review with _$Review {
  const factory Review(
      {required User reviewer,
      required int rating,
      required int createdAt,
      required String comments}) = _Review;

  factory Review.fromJson(Map<String, Object?> json) => _$ReviewFromJson(json);
}
