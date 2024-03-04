import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';

class GlobalSideBar extends ConsumerWidget {
  const GlobalSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signOutUseCase = ref.watch(signOutUseCaseProvider);
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: AppColor.attentionColor,
            ),
            title: const Text(
              'logout',
              style: TextStyle(
                  color: AppColor.attentionColor, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              signOutUseCase.call();
            },
          ),
          ListTile(
            title: const Text('item2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
