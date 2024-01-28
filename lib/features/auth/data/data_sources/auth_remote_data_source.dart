import '../models/auth_user_model.dart';

abstract class AuthRemoteDataSource {
  Stream<AuthUserModel?> get user;

  Future<AuthUserModel> signUp({
    required String email,
    required String password,
  });

  Future<AuthUserModel> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
