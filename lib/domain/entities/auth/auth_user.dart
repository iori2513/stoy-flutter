import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String userId;
  final String email;
  final String username;
  final String? photoUrl;

  const AuthUser({
    required this.userId,
    required this.email,
    required this.username,
    this.photoUrl,
  });

  static AuthUser emptyAuthUser =
      const AuthUser(userId: '', email: '', username: '', photoUrl: '');

  bool get isEmpty => this == AuthUser.emptyAuthUser;

  @override
  List<Object?> get props => [userId, email, username, photoUrl];
}
