import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/data/data_sources/diet/diet_remote_data_source.dart';
import 'package:stoy/data/repositories/diet/diet_repository_impl.dart';
import 'package:stoy/domain/use_cases/diet/add_diet.dart';
import 'package:stoy/domain/use_cases/diet/diet_list.dart';
import 'package:stoy/domain/use_cases/diet/update_diet.dart';

final dietRemoteDataSourceProvider = Provider<DietRemoteDataSource>((ref) {
  return DietRemoteDataSource();
});

final dietRepository = Provider<DietRepositoryImpl>((ref) {
  final dataSource = ref.watch(dietRemoteDataSourceProvider);
  return DietRepositoryImpl(dataSource);
});

final dietListProvider = Provider<DietList>((ref) {
  final repository = ref.watch(dietRepository);
  return DietList(dietRepository: repository);
});

final addDietProvider = Provider<AddDiet>((ref) {
  final repository = ref.watch(dietRepository);
  return AddDiet(dietRepository: repository);
});

final updateDietProvider = Provider<UpdateDiet>((ref) {
  final repository = ref.watch(dietRepository);
  return UpdateDiet(dietRepository: repository);
});
