import 'package:stoy/domain/entities/auth_user.dart';
import 'package:stoy/domain/repositories/auth_repository.dart';

import '../data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  const AuthRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Stream<AuthUser> get authUser {
    return remoteDataSource.user.map((user) {
      if (user == null) {
        return AuthUser.emptyAuthUser;
      }
      return user.toEntity();
    });
  }

  @override
  Future<AuthUser> signIn(
      {required String email, required String password}) async {
    final authModel =
        await remoteDataSource.signIn(email: email, password: password);
    return authModel.toEntity();
  }

  @override
  Future<void> signOut() {
    return remoteDataSource.signOut();
  }

  @override
  Future<AuthUser> signUp(
      {required String email,
      required String password,
      required String username}) async {
    final authModel = await remoteDataSource.signUp(
        email: email, password: password, username: username);
    return authModel.toEntity();
  }
}
