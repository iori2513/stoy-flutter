import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/auth/sign_up/sign_up_notifier.dart';
import 'package:stoy/presentation/providers/auth/sign_up/sign_up_state.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';

final signUpNotifierProvider =
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) {
  final signUpUseCase = ref.watch(signUpUseCaseProvider);
  final authState = ref.watch(authNotifierProvider);
  return SignUpNotifier(signUpUseCase: signUpUseCase, authState: authState);
});
