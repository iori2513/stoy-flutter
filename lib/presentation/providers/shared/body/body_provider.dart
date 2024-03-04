import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/data/data_sources/body/body_remote_data_source.dart';
import 'package:stoy/data/repositories/body/body_repository_impl.dart';
import 'package:stoy/domain/use_cases/body/add_body_data_use_case.dart';
import 'package:stoy/domain/use_cases/body/fetch_body_data_list_use_case.dart';
import 'package:stoy/domain/use_cases/body/update_body_data_use_case.dart';

final bodyRemoteDataSourceProvider = Provider((ref) {
  return BodyRemoteDataSource();
});

final bodyRepositoryProvider = Provider((ref) {
  final dataSource = ref.watch(bodyRemoteDataSourceProvider);
  return BodyRepositoryImpl(dataSource);
});

final fetchBodyDataListUseCaseProvider = Provider((ref) {
  final repository = ref.watch(bodyRepositoryProvider);
  return FetchBodyDataListUseCase(repository);
});

final addBodyDataUseCaseProvider = Provider((ref) {
  final repository = ref.watch(bodyRepositoryProvider);
  return AddBodyDataUseCase(repository);
});

final updateBodyDataUseCaseProvider = Provider((ref) {
  final repository = ref.watch(bodyRepositoryProvider);
  return UpdateBodyDataUseCase(repository);
});
