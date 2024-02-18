import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/auth_user.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState(user: AuthUser.emptyAuthUser));
}
