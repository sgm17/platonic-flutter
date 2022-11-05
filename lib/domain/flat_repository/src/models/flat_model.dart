import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import '../../../user_repository/src/models/models.dart';
import 'models.dart';
part 'flat_model.freezed.dart';
part 'flat_model.g.dart';

@freezed
abstract class Flat with _$Flat {
  const factory Flat(
      {required dynamic lessor,
      required String title,
      required List<String> ubication,
      required List<double> coordinates,
      required FlatProperties flatProperties,
      required String hood,
      required String city,
      required int monthlyPrice,
      int? dipositAmount,
      int? dipositMinimumMonths,
      bool? garagePriceIncluded,
      int? garagePrice,
      required List<String> images,
      int? maxTenants,
      required List<User> tenants,
      required List<University> nearUniversities,
      required List<UniversityTransport> universityTransports,
      required List<Review> reviews}) = _Flat;

  factory Flat.fromJson(Map<String, Object?> json) => _$FlatFromJson(json);
}
