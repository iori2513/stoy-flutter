import 'package:equatable/equatable.dart';

class SignUpState extends Equatable {
  final String email;
  final String password;
  final String username;
  final bool isLoading;
  final String? errorMessage;

  const SignUpState({
    this.email = '',
    this.password = '',
    this.username = '',
    this.isLoading = false,
    this.errorMessage,
  });

  const SignUpState.initial({
    this.email = '',
    this.password = '',
    this.username = '',
    this.isLoading = false,
    this.errorMessage,
  });

  SignUpState copyWith({
    String? email,
    String? password,
    String? username,
    bool? isLoading,
    String? errorMessage,
  }) {
    return SignUpState(
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
