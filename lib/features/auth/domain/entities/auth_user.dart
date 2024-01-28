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

  // static const AuthUser empty = AuthUser(
  //     userId: '', email: '', username: '', photoUrl: '');
  //
  // bool get isEmpty => this == AuthUser.empty;

  @override
  List<Object?> get props => [userId, email, username, photoUrl];
}
