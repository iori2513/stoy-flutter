import 'package:equatable/equatable.dart';
import 'package:stoy/domain/entities/auth_user.dart';

class AuthState extends Equatable {
  final AuthUser? user;

  const AuthState({
    this.user,
  });

  const AuthState.initial({this.user});

  AuthState copyWith({AuthUser? user}) {
    return AuthState(user: user ?? this.user);
  }

  @override
  List<Object?> get props => [user];
}
