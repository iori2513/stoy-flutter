import '../entities/auth_user.dart';

abstract class AuthUserRepository {
  Future<AuthUser> signUp({required String email, required String password});

  Future<AuthUser> signIn({required String email, required String password});

  Future<void> signOut();
}
