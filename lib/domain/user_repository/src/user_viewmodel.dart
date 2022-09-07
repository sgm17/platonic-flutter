import 'package:platonic/domain/api_data.dart';
import 'package:platonic/domain/user_repository/src/models/user_model.dart';
import 'package:platonic/domain/user_repository/src/user_repository.dart';

class UserViewmodel implements UserRepository {
  @override
  Future<User> retrieveProfile() {
    return Future.delayed(const Duration(seconds: 1), () {
      return user;
    });
  }
}
