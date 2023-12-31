import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String firstName,
    required String lastName,
    required String userName,
    required String email,
    required String password,
    required String signUpDate,
  }) = _User;
}
