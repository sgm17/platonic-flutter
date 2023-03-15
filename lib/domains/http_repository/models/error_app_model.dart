import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_app_model.freezed.dart';

@freezed
class ErrorApp with _$ErrorApp {
  const ErrorApp._();

  const factory ErrorApp({
    required String code,
  }) = _ErrorApp;
}
