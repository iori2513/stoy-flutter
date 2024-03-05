import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/auth/auth_user.dart';
import 'package:stoy/domain/use_cases/auth/fetch_user_use_case.dart';

import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final FetchUserUseCase fetchUserUseCase;

  StreamSubscription<AuthUser?>? _userSubscription;

  AuthNotifier(this.fetchUserUseCase)
      : super(AuthState(user: AuthUser.emptyAuthUser)) {
    _subscribeAuthUser();
  }

  void _subscribeAuthUser() {
    _userSubscription = fetchUserUseCase.call().listen(
      (user) {
        print('listen');
        if (user != null) {
          print('user not null');
          state = state.copyWith(user: user);
        } else {
          state = state.copyWith(user: AuthUser.emptyAuthUser);
          print('user null');
        }
      },
      onError: (error) {
        state = state.copyWith();
      },
    );
  }

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
  }

  void setUser(AuthUser user) {
    state = state.copyWith(user: user);
  }
}
