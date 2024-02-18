import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:json_annotation/json_annotation.dart';
import 'package:stoy/domain/entities/auth_user.dart';

part 'auth_user_model.g.dart';

@JsonSerializable()
class AuthUserModel extends Equatable {
  final String userId;
  final String email;
  final String username;

  const AuthUserModel({
    required this.userId,
    required this.email,
    required this.username,
  });

  factory AuthUserModel.fromFirebaseAuthUser(fb_auth.User firebaseUser) {
    return AuthUserModel(
        userId: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        username: '');
  }

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);

  AuthUser toEntity() {
    return AuthUser(userId: userId, email: email, username: username);
  }

  Map<String, dynamic> toJson() => _$AuthUserModelToJson(this);

  @override
  List<Object?> get props => [userId, email, username];
}
