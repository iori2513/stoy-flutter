import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';

import '../entities/auth_user.dart';

class SignUpUseCase {
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});

  Future<AuthUser> call(
      {required String email,
      required String password,
      required String username}) {
    return authRepository.signUp(
        email: email, password: password, username: username);
  }
}
