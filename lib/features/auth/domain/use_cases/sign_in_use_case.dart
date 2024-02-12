import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';

import '../entities/auth_user.dart';

class SignInUseCase {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  Future<AuthUser> call({required String email, required String password}) {
    return authRepository.signIn(email: email, password: password);
  }
}
