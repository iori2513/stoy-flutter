import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/auth/sign_in/sign_in_notifier.dart';
import 'package:stoy/presentation/providers/auth/sign_in/sign_in_state.dart';

final signInNotifierProvider =
    StateNotifierProvider<SignInNotifier, SignInState>((ref) {
  final signInUseCase = ref.watch(signInUseCaseProvider);
  final authState = ref.watch(authNotifierProvider);
  return SignInNotifier(signInUseCase: signInUseCase, authState: authState);
});
