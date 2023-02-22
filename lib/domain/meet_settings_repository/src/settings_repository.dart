import './models/models.dart';

abstract class SettingsRepository {
  Future<MeetSettings> retrieveSettings();
}
