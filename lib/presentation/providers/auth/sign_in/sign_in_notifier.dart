import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/use_cases/auth/sign_in_use_case.dart';
import 'package:stoy/presentation/providers/auth/auth_state.dart';
import 'package:stoy/presentation/providers/auth/sign_in/sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final SignInUseCase signInUseCase;
  final AuthState authState;

  SignInNotifier({required this.signInUseCase, required this.authState})
      : super(const SignInState.initial());

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true);
    try {
      final user = await signInUseCase.call(
          email: state.email, password: state.password);
      final authState = state.authState.copyWith(user: user);
      state = state.copyWith(authState: authState);
    } catch (error) {
      state = state.copyWith(errorMessage: error.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void onChangedEmail(String value) {
    state = state.copyWith(email: value);
  }

  void onChangedPassword(String value) {
    state = state.copyWith(password: value);
  }

  void goToSignUpPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/signUp', (route) => false);
  }
}
