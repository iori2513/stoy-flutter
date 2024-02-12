import 'package:flutter/material.dart';
import 'package:stoy/presentation/pages/default_page.dart';
import 'package:stoy/presentation/pages/main_page.dart';
import 'package:stoy/presentation/pages/sign_in_page.dart';
import 'package:stoy/presentation/pages/sign_up_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case '/signIn':
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );
      case '/main':
        return MaterialPageRoute(builder: (_) => const MainPage());
      default:
        return MaterialPageRoute(builder: (_) => const DefaultPage());
    }
  }
}
