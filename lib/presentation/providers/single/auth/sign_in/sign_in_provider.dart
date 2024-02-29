import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/single/auth/sign_in/sign_in_notifier.dart';
import 'package:stoy/presentation/providers/single/auth/sign_in/sign_in_state.dart';

final signInNotifierProvider =
    StateNotifierProvider.autoDispose<SignInNotifier, SignInState>((ref) {
  final signInUseCase = ref.watch(signInUseCaseProvider);
  return SignInNotifier(signInUseCase: signInUseCase);
});
