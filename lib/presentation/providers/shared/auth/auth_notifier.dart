import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/auth/auth_user.dart';

import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState(user: AuthUser.emptyAuthUser()));

  void setUser(AuthUser user) {
    state = state.copyWith(user: user);
  }
}
