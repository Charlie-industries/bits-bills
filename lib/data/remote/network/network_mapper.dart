import 'package:e_reciept/data/remote/network/entity/user_entity.dart';
import 'package:e_reciept/domain/exception/mapper_exception.dart';
import 'package:e_reciept/domain/model/user.dart';
import 'package:logger/logger.dart';

class NetworkMapper {
  final Logger log;

  NetworkMapper({required this.log});

  User toUserModel(UserEntity entity) {
    try {
      return User(
          id: entity.id.toString(),
          firstName: entity.firstName,
          lastName: entity.lastName,
          userName: entity.userName,
          email: entity.email,
          password: entity.password,
          signUpDate: entity.signUpDate);
    } catch (e) {
      throw MapperExeption<UserEntity, User>(e.toString());
    }
  }

  List<User> toUsers(List<UserEntity> entities) {
    final List<User> users = [];

    for (final entity in entities) {
      try {
        users.add(toUserModel(entity));
      } catch (e) {
        log.w('Could not map entity ${entity.id}', error: e);
      }
    }
    return users;
  }
}
