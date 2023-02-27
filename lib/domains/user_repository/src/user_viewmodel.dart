import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/user_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class UserViewmodel implements UserRepository {
  final Ref ref;

  UserViewmodel({required this.ref});

  // index
  @override
  Future<AppUser?> getAppUserProfile({required String tokenId}) {
    return ref.read(httpViewmodelProvider).getIndexAppUser(tokenId: tokenId);
  }

  // show
  @override
  Future<AppUser> getOtherUserProfile({required String otherUid}) {
    return ref
        .read(httpViewmodelProvider)
        .getShowOtherAppUser(otherUid: otherUid);
  }

  // create
  @override
  Future<AppUser> postUserRegisterDetailProfile({required AppUser user}) {
    return ref.read(httpViewmodelProvider).postCreateAppUser(user: user);
  }
}
