import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:stoy/features/auth/domain/entities/auth_user.dart';

class AuthUserModel extends Equatable {
  final String userId;
  final String email;
  final String username;
  final String? photoUrl;

  const AuthUserModel({
    required this.userId,
    required this.email,
    required this.username,
    this.photoUrl,
  });

  factory AuthUserModel.fromFirebaseAuthUser(fb_auth.User firebaseUser) {
    return AuthUserModel(
        userId: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        username: '');
  }

  AuthUser toEntity() {
    return AuthUser(userId: userId, email: email, username: username);
  }

  @override
  List<Object?> get props => [userId, email, username, photoUrl];
}
