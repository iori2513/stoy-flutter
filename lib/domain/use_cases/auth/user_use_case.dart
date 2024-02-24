import 'package:stoy/domain/entities/auth/auth_user.dart';
import 'package:stoy/domain/repositories/auth/auth_repository.dart';

class UserUseCase {
  final AuthRepository authRepository;

  UserUseCase({required this.authRepository});

  Stream<AuthUser> call() {
    return authRepository.authUser;
  }
}
