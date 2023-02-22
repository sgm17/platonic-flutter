import 'models/models.dart';

abstract class UserRepository {
  Future<AppUser?> loginAndRetrieveProfile({required String tokenId});
  Future<AppUser> registerAndRetrieveProfile(
      {required String tokenId,
      required UserBackendRegister userBackendRegister});
  Future<bool> updateCloudToken(
      {required String tokenId, required String cloudToken});
  Future<AppUser> retrieveOtherProfile(
      {required String tokenId, required AppUser appUser});
}
