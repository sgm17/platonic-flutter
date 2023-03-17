import 'models/models.dart';

abstract class UserRepository {
  Future<AppUser?> getAppUserProfile({required String tokenId});
  Future<AppUser> postCreateUserRegisterDetail();
  Future<AppUser> postUpdateUserRegisterDetail();
  Future<bool> postUpdateCloudToken({required String cloudToken});
  Future<bool> deleteAppUser({required AppUser appUser});
}
