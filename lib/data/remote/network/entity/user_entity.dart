class UserEntity {
  String id;
  String firstName;
  String lastName;
  String userName;
  String email;
  String password;
  String signUpDate;

  UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.password,
    required this.signUpDate,
  });
}

class Id {
  String oid;

  Id({
    required this.oid,
  });
}
