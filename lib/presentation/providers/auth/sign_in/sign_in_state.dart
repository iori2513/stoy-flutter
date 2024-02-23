import 'package:equatable/equatable.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';

class SignInState extends Equatable {
  final AuthState authState;
  final String email;
  final String password;
  final bool isLoading;
  final String? errorMessage;

  const SignInState({
    this.authState = const AuthState.initial(),
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.errorMessage,
  });

  const SignInState.initial({
    this.authState = const AuthState.initial(),
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.errorMessage,
  });

  SignInState copyWith({
    AuthState? authState,
    String? email,
    String? password,
    bool? isLoading,
    String? errorMessage,
  }) {
    return SignInState(
        authState: authState ?? this.authState,
        email: email ?? this.email,
        password: password ?? this.password,
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
