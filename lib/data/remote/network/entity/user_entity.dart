import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UpcomingUsers {
  UpcomingUsers({required this.results});

  List<UserEntity> results;

  factory UpcomingUsers.fromJson(List<dynamic> json) {
    List<UserEntity> users = [];
    for (var userJson in json) {
      users.add(UserEntity.fromJson(userJson as Map<String, dynamic>));
    }
    return UpcomingUsers(results: users);
  }
}

@JsonSerializable()
class UserEntity {
  Id id;
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

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

@JsonSerializable()
class Id {
  String oid;

  Id({
    required this.oid,
  });

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}
