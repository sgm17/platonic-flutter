import 'models/models.dart';

abstract class UserRepository {
  Future<User> retrieveProfile();
}
