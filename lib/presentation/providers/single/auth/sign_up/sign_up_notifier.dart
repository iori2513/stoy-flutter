import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/auth/auth_user.dart';
import 'package:stoy/domain/use_cases/auth/sign_up_use_case.dart';
import 'package:stoy/presentation/providers/single/auth/sign_up/sign_up_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpNotifier({required this.signUpUseCase})
      : super(const SignUpState.initial());

  Future<AuthUser> signUp() async {
    state = state.copyWith(isLoading: true);
    try {
      final user = await signUpUseCase.call(
          email: state.email,
          password: state.password,
          username: state.username);
      state = state.copyWith(email: '', password: '', username: '');
      return user;
    } catch (error) {
      state = state.copyWith(errorMessage: error.toString());
      rethrow;
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

  void onChangeUsername(String value) {
    state = state.copyWith(username: value);
  }

  void goToSignInPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/signIn', (route) => false);
  }
}
