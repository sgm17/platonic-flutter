import 'models/models.dart';

abstract class UserRepository {
  Future<AppUser?> getAppUserProfile({required String tokenId});
  Future<AppUser> getOtherUserProfile({required String otherUid});
  Future<AppUser> postCreateUserRegisterDetail();
  Future<AppUser> postUpdateUserRegisterDetail();
}
