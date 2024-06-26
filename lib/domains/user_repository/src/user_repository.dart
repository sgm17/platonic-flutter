import 'models/models.dart';

abstract class UserRepository {
  Future<AppUser?> getAppUserProfile();
  Future<AppUser> postCreateUserRegisterDetail({required AppUser appUser});
  Future<AppUser> postUpdateUserRegisterDetail({required AppUser appUser});
  Future<bool> postUpdateCloudToken({required String cloudToken});
  Future<bool> deleteAppUser({required AppUser appUser});
}
