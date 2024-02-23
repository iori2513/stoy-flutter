import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/use_cases/auth/sign_up_use_case.dart';
import 'package:stoy/presentation/providers/auth/sign_up/sign_up_state.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final SignUpUseCase signUpUseCase;
  final AuthState authState;

  SignUpNotifier({required this.signUpUseCase, required this.authState})
      : super(const SignUpState.initial());

  Future<void> signUp() async {
    state = state.copyWith(isLoading: true);
    try {
      final user = await signUpUseCase.call(
          email: state.email,
          password: state.password,
          username: state.username);
      final authState = state.authState.copyWith(user: user);
      state = state.copyWith(
          authState: authState, email: '', password: '', username: '');
    } catch (error) {
      state = state.copyWith(errorMessage: error.toString());
      debugPrint(state.errorMessage);
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
