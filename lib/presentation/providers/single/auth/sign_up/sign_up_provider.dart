import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/single/auth/sign_up/sign_up_notifier.dart';
import 'package:stoy/presentation/providers/single/auth/sign_up/sign_up_state.dart';

final signUpNotifierProvider =
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) {
  final signUpUseCase = ref.watch(signUpUseCaseProvider);
  return SignUpNotifier(signUpUseCase: signUpUseCase);
});
