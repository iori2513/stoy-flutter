import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';

class AuthCheck extends ConsumerWidget {
  final Widget loggedInScreen;
  final Widget loggedOutScreen;

  const AuthCheck(
      {super.key, required this.loggedInScreen, required this.loggedOutScreen});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    if (authState.user.isEmpty) {
      return loggedOutScreen;
    } else {
      return loggedInScreen;
    }
  }
}
