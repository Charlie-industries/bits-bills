// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingUsers _$UpcomingUsersFromJson(Map<String, dynamic> json) =>
    UpcomingUsers(
      results: (json['results'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcomingUsersToJson(UpcomingUsers instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: Id.fromJson(json['_id'] as Map<String, dynamic>),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      signUpDate: json['signUpDate'] as String,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'password': instance.password,
      'signUpDate': instance.signUpDate,
    };

Id _$IdFromJson(Map<String, dynamic> json) => Id(
      oid: json['oid'] as String,
    );

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{
      'oid': instance.oid,
    };
