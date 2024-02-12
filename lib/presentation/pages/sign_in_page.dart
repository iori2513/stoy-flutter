import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/auth/sign_in/sign_in_provider.dart';
import 'package:stoy/presentation/widgets/auth_page_title.dart';
import 'package:stoy/presentation/widgets/outlined_button.dart';

import '../widgets/auth_text_field.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signInNotifierProvider);
    final notifier = ref.watch(signInNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('STOY')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AuthPageTitle(
                title: 'Login',
                description: 'Welcome Back , You have been missed !'),
            const SizedBox(height: 30),
            AuthTextField(
              label: 'Email',
              password: false,
              placeholder: 'Enter your email',
              onChangeText: notifier.onChangedEmail,
            ),
            const SizedBox(height: 40),
            AuthTextField(
              label: 'Password',
              placeholder: 'Enter your password',
              password: true,
              onChangeText: notifier.onChangedPassword,
            ),
            const SizedBox(height: 50),
            OutlinedWideButton(
              label: 'signIn',
              color: AppColor.primaryColor,
              onPressed: () {
                notifier.signIn();
              },
              isLoading: state.isLoading,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
