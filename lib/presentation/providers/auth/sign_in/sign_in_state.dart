import 'package:equatable/equatable.dart';

class SignInState extends Equatable {
  final String email;
  final String password;
  final bool isLoading;
  final String? errorMessage;

  const SignInState({
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.errorMessage,
  });

  const SignInState.initial({
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.errorMessage,
  });

  SignInState copyWith({
    String? email,
    String? password,
    bool? isLoading,
    String? errorMessage,
  }) {
    return SignInState(
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
