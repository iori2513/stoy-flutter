import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signOut = ref.watch(signOutUseCaseProvider);
    return Scaffold(
      body: SafeArea(
        child: IconButton(
            onPressed: () {
              signOut.call();
            },
            icon: const Icon(Icons.access_time_outlined)),
      ),
    );
  }
}
