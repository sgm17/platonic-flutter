import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'university_transport_model.freezed.dart';
part 'university_transport_model.g.dart';

@freezed
abstract class UniversityTransport with _$UniversityTransport {
  const factory UniversityTransport(
      {required int universityId,
      required String universityName,
      required List<Transport> transports}) = _UniversityTransport;

  factory UniversityTransport.fromJson(Map<String, Object?> json) =>
      _$UniversityTransportFromJson(json);
}
