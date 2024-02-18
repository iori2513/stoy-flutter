import 'package:stoy/domain/entities/auth_user.dart';
import 'package:stoy/domain/repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  Future<AuthUser> call({required String email, required String password}) {
    return authRepository.signIn(email: email, password: password);
  }
}
