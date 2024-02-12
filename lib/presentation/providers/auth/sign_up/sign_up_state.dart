import 'package:equatable/equatable.dart';
import 'package:stoy/presentation/providers/auth/auth_state.dart';

class SignUpState extends Equatable {
  final AuthState authState;
  final String email;
  final String password;
  final String username;
  final bool isLoading;
  final String? errorMessage;

  const SignUpState({
    this.authState = const AuthState.initial(),
    this.email = '',
    this.password = '',
    this.username = '',
    this.isLoading = false,
    this.errorMessage,
  });

  const SignUpState.initial({
    this.authState = const AuthState.initial(),
    this.email = '',
    this.password = '',
    this.username = '',
    this.isLoading = false,
    this.errorMessage,
  });

  SignUpState copyWith({
    AuthState? authState,
    String? email,
    String? password,
    String? username,
    bool? isLoading,
    String? errorMessage,
  }) {
    return SignUpState(
        authState: authState ?? this.authState,
        email: email ?? this.email,
        password: password ?? this.password,
        username: username ?? this.username,
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  List<Object?> get props => [
        email,
        password,
        isLoading,
        errorMessage,
      ];
}
