import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase {
  final AuthRepository authUserRepository;

  SignOutUseCase({required this.authUserRepository});

  Future<void> call() async {
    return authUserRepository.signOut();
  }
}
