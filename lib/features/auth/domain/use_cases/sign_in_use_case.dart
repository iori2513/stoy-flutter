import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';

import '../entities/auth_user.dart';

class SignInUseCase {
  final AuthRepository authUserRepository;

  SignInUseCase({required this.authUserRepository});

  Future<AuthUser> call({required String email, required String password}) {
    return authUserRepository.signIn(email: email, password: password);
  }
}
