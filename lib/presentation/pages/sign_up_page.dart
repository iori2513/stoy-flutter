import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/auth/sign_up/sign_up_provider.dart';
import 'package:stoy/presentation/widgets/auth_page_title.dart';
import 'package:stoy/presentation/widgets/outlined_button.dart';

import '../widgets/auth_text_field.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpNotifierProvider);
    final notifier = ref.watch(signUpNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('STOY')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AuthPageTitle(
                title: 'Register',
                description: 'Let’s get started , You’ll love it for sure !'),
            const SizedBox(height: 16),
            AuthTextField(
              label: 'Email',
              password: false,
              placeholder: 'Enter your email',
              onChangeText: notifier.onChangedEmail,
            ),
            const SizedBox(height: 16),
            AuthTextField(
              label: 'Username',
              placeholder: 'Enter your username',
              password: false,
              onChangeText: notifier.onChangeUsername,
            ),
            const SizedBox(height: 16),
            AuthTextField(
              label: 'Password',
              placeholder: 'Enter your password',
              password: true,
              onChangeText: notifier.onChangedPassword,
            ),
            const SizedBox(height: 24),
            OutlinedWideButton(
              label: 'Register',
              color: AppColor.primaryColor,
              onPressed: () {
                notifier.signUp();
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
