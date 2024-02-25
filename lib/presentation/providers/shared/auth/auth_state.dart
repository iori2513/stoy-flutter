import 'package:equatable/equatable.dart';
import 'package:stoy/domain/entities/auth/auth_user.dart';

class AuthState extends Equatable {
  final AuthUser user;

  const AuthState({
    required this.user,
  });

  const AuthState.initial({required this.user});

  AuthState copyWith({AuthUser? user}) {
    return AuthState(user: user ?? this.user);
  }

  @override
  List<Object?> get props => [user];
}
