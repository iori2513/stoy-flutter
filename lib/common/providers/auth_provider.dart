import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:stoy/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:stoy/features/auth/domain/repositories/auth_repository.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSource();
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  return AuthRepositoryImpl(remoteDataSource: remoteDataSource);
});
