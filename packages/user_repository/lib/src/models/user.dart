import 'package:user_repository/user_repository.dart';

class User {
  String id;
  String email;

  User({
    required this.id,
    required this.email,
  });

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
    );
  }

  static User fromEntity(UserEntity entity) {
    return User(
      id: entity.id,
      email: entity.email,
    );
  }
}
