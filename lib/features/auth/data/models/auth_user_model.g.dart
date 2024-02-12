// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserModel _$AuthUserModelFromJson(Map<String, dynamic> json) =>
    AuthUserModel(
      userId: json['userId'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$AuthUserModelToJson(AuthUserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'username': instance.username,
    };
