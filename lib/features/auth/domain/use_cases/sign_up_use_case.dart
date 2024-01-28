import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';

import '../entities/auth_user.dart';

class SignUpUseCase {
  final AuthRepository authUserRepository;

  SignUpUseCase({required this.authUserRepository});

  Future<AuthUser> call({required String email, required String password}) {
    return authUserRepository.signUp(email: email, password: password);
  }
}
