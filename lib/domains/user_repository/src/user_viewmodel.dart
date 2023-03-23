import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/user_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class UserViewmodel implements UserRepository {
  final Ref ref;

  UserViewmodel(this.ref);

  // index
  @override
  Future<AppUser?> getAppUserProfile() {
    return ref.read(httpViewmodelProvider).getIndexAppUser();
  }

  // create
  @override
  Future<AppUser> postCreateUserRegisterDetail({required AppUser appUser}) {
    return ref.read(httpViewmodelProvider).postCreateAppUser(user: appUser);
  }

  // put
  @override
  Future<AppUser> postUpdateUserRegisterDetail(
      {required AppUser appUser}) async {
    return ref.read(httpViewmodelProvider).putUpdateAppUser(user: appUser);
  }

  // put
  @override
  Future<bool> postUpdateCloudToken({required String cloudToken}) {
    return ref
        .read(httpViewmodelProvider)
        .putUpdateCloudTokenAppUser(cloudToken: cloudToken);
  }

  // still not implemented
  @override
  Future<bool> deleteAppUser({required AppUser appUser}) {
    return ref.read(httpViewmodelProvider).deleteDestroyAppUser(user: appUser);
  }
}
