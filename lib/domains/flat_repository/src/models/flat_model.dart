import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
part 'flat_model.freezed.dart';
part 'flat_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class FlatModel with _$FlatModel {
  const FlatModel._();

  factory FlatModel(
      {required int id,
      required AppUser owner,
      required List<AppUser> tenants,
      required String title,
      required String description,
      required PropertyModel properties,
      required List<double> geometry,
      required Currency currency,
      required int rentPricePerMonthInCents,
      required int advancePriceInCents,
      required int electricityPriceInCents,
      required DateTime availableFrom,
      required String maxMonthsStay,
      required String minMonthsStay,
      required String tenantsNumber,
      required String bedroom,
      required String bathroom,
      required int built,
      required int floor,
      required List<FeatureModel> features,
      required List<TransportModel> transports,
      required List<dynamic> images,
      required bool bookMark}) = _FlatModel;

  static List<double> emptyGeometry = [2.170056412042614, 41.3869926501536];

  static FlatModel emptyFlat = FlatModel(
      id: 0,
      owner: AppUser.emptyUser,
      tenants: [],
      title: '',
      description: '',
      properties: PropertyModel.emptyProperties,
      geometry: emptyGeometry,
      rentPricePerMonthInCents: 0,
      advancePriceInCents: 0,
      electricityPriceInCents: 0,
      availableFrom: DateTime.now(),
      minMonthsStay: '0',
      maxMonthsStay: '1',
      tenantsNumber: '1',
      bedroom: '1',
      bathroom: '1',
      built: 0,
      floor: -1,
      features: [],
      transports: [],
      images: [],
      bookMark: false,
      currency: Currency.eur);

  factory FlatModel.fromJson(Map<String, dynamic> json) =>
      _$FlatModelFromJson(json);

  Map<String, dynamic> toJson() => _$FlatModelToJson(this);
}
