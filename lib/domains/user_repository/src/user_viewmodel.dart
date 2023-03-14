import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/user_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';

class UserViewmodel implements UserRepository {
  final Ref ref;

  UserViewmodel({required this.ref});

  // index
  @override
  Future<AppUser?> getAppUserProfile({required String tokenId}) {
    return ref.read(httpViewmodelProvider).getIndexAppUser(tokenId: tokenId);
  }

  // create
  @override
  Future<AppUser> postCreateUserRegisterDetail() {
    final user = ref.read(userRegisterDetailProvider);
    return ref.read(httpViewmodelProvider).postCreateAppUser(user: user);
  }

  // put
  @override
  Future<AppUser> postUpdateUserRegisterDetail() {
    final user = ref.read(userRegisterDetailProvider);
    return ref.read(httpViewmodelProvider).putUpdateAppUser(user: user);
  }
}
