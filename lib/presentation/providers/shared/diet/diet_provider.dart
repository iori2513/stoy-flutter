import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/data/data_sources/diet/diet_remote_data_source.dart';
import 'package:stoy/data/repositories/diet/diet_repository_impl.dart';
import 'package:stoy/domain/use_cases/diet/add_diet_use_case.dart';
import 'package:stoy/domain/use_cases/diet/fetch_diet_list_use_case.dart';
import 'package:stoy/domain/use_cases/diet/update_diet_use_case.dart';

final dietRemoteDataSourceProvider = Provider<DietRemoteDataSource>((ref) {
  return DietRemoteDataSource();
});

final dietRepository = Provider<DietRepositoryImpl>((ref) {
  final dataSource = ref.watch(dietRemoteDataSourceProvider);
  return DietRepositoryImpl(dataSource);
});

final fetchDietListUseCaseProvider = Provider<FetchDietListUseCase>((ref) {
  final repository = ref.watch(dietRepository);
  return FetchDietListUseCase(dietRepository: repository);
});

final addDietUseCaseProvider = Provider<AddDietUseCase>((ref) {
  final repository = ref.watch(dietRepository);
  return AddDietUseCase(dietRepository: repository);
});

final updateDietUseCaseProvider = Provider<UpdateDietUseCase>((ref) {
  final repository = ref.watch(dietRepository);
  return UpdateDietUseCase(dietRepository: repository);
});
