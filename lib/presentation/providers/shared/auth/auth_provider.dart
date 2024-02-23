import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/data/data_sources/auth/auth_remote_data_source.dart';
import 'package:stoy/data/repositories/auth/auth_repository_impl.dart';
import 'package:stoy/domain/repositories/auth/auth_repository.dart';
import 'package:stoy/domain/use_cases/auth/sign_in_use_case.dart';
import 'package:stoy/domain/use_cases/auth/sign_out_use_case.dart';
import 'package:stoy/domain/use_cases/auth/sign_up_use_case.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_notifier.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSource();
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  return AuthRepositoryImpl(remoteDataSource: remoteDataSource);
});

final signInUseCaseProvider = Provider<SignInUseCase>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignInUseCase(authRepository: authRepository);
});

final signUpUseCaseProvider = Provider<SignUpUseCase>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignUpUseCase(authRepository: authRepository);
});

final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignOutUseCase(authRepository: authRepository);
});

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
