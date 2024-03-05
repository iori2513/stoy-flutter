import 'package:flutter/material.dart';
import 'package:stoy/presentation/pages/auth/sign_in_page.dart';
import 'package:stoy/presentation/pages/auth/sign_up_page.dart';
import 'package:stoy/presentation/pages/core/auth_check.dart';
import 'package:stoy/presentation/pages/core/home_page.dart';
import 'package:stoy/presentation/pages/core/main_page.dart';
import 'package:stoy/presentation/pages/core/profile_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signUp':
        return MaterialPageRoute(
            builder: (_) => const AuthCheck(
                loggedInScreen: MainPage(), loggedOutScreen: SignUpPage()));
      case '/signIn':
        return MaterialPageRoute(
            builder: (_) => const AuthCheck(
                loggedInScreen: MainPage(), loggedOutScreen: SignInPage()));

      case '/main':
        return MaterialPageRoute(builder: (_) => const MainPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        return MaterialPageRoute(
            builder: (_) => const AuthCheck(
                loggedInScreen: MainPage(), loggedOutScreen: SignInPage()));
    }
  }
}
