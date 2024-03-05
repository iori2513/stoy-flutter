import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/use_cases/auth/sign_in_use_case.dart';
import 'package:stoy/presentation/providers/single/auth/sign_in/sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final SignInUseCase signInUseCase;

  SignInNotifier({required this.signInUseCase})
      : super(const SignInState.initial());

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true);
    try {
      await signInUseCase.call(email: state.email, password: state.password);
    } catch (error) {
      state = state.copyWith(errorMessage: error.toString());
      debugPrint(error.toString());
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
