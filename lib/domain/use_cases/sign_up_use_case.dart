import 'package:stoy/domain/entities/auth_user.dart';
import 'package:stoy/domain/repositories/auth_repository.dart';

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
