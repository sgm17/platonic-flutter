import 'package:platonic/domain/meet_settings_repository/src/models/meet_settings_model.dart';
import 'package:platonic/domain/meet_settings_repository/src/settings_repository.dart';

class SettingsViewmodel implements SettingsRepository {
  @override
  Future<MeetSettings> retrieveSettings() {
    // TODO: implement retrieveSettings
    throw UnimplementedError();
  }
}
