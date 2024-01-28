import 'package:stoy/features/auth/domain/repositories/auth_user_repository.dart';

class SignOutUseCase {
  final AuthUserRepository authUserRepository;

  SignOutUseCase({required this.authUserRepository});

  Future<void> call() async {
    return authUserRepository.signOut();
  }
}
