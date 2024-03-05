class UserEntity {
  String id;
  String email;

  UserEntity({
    required this.id,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "email": email,
    };
  }

  static UserEntity fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map["id"],
      email: map["email"],
    );
  }
}
