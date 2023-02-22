import 'package:platonic/domain/user_repository/src/models/user_backend_register_model.dart';
import 'package:platonic/stories_api.dart';
import 'package:platonic/domain/user_repository/src/models/app_user_model.dart';
import 'package:platonic/domain/user_repository/src/user_repository.dart';

class UserViewmodel implements UserRepository {
  @override
  Future<AppUser?> loginAndRetrieveProfile({required String tokenId}) {
    return Future.delayed(const Duration(seconds: 1), () => myUser);
  }

  @override
  Future<AppUser> retrieveOtherProfile(
      {required String tokenId, required AppUser appUser}) {
    return Future.delayed(const Duration(seconds: 1), () => appUser);
  }

  @override
  Future<AppUser> registerAndRetrieveProfile(
      {required String tokenId,
      required UserBackendRegister userBackendRegister}) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => AppUser(
            uid: userBackendRegister.uid,
            name: userBackendRegister.name,
            university: userBackendRegister.university,
            study: userBackendRegister.study));
  }

  @override
  Future<bool> updateCloudToken(
      {required String tokenId, required String cloudToken}) {
    return Future.delayed(const Duration(seconds: 1), () => true);
  }
}
