import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/auth/auth_user.dart';
import 'package:stoy/presentation/pages/core/main_page.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';

class AuthCheck extends ConsumerWidget {
  final Widget loggedInScreen;
  final Widget loggedOutScreen;

  const AuthCheck(
      {super.key, required this.loggedInScreen, required this.loggedOutScreen});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authUserProvider);
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return authState.when(
      data: (AuthUser? user) {
        if (user != null) {
          Future.microtask(() => authNotifier.setUser(user));
          return const MainPage();
        } else {
          return loggedOutScreen;
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (_, __) => loggedOutScreen,
    );
  }
}
