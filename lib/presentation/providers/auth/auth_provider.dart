import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:stoy/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';
import 'package:stoy/features/auth/domain/use_cases/sign_in_use_case.dart';
import 'package:stoy/features/auth/domain/use_cases/sign_out_use_case.dart';
import 'package:stoy/features/auth/domain/use_cases/sign_up_use_case.dart';
import 'package:stoy/presentation/providers/auth/auth_notifier.dart';
import 'package:stoy/presentation/providers/auth/auth_state.dart';

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
