import 'package:stoy/data/data_sources/diet/diet_remote_data_source.dart';
import 'package:stoy/data/models/diet/diet_model.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/repositories/diet/diet_repository.dart';

class DietRepositoryImpl implements DietRepository {
  final DietRemoteDataSource remoteDataSource;

  const DietRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> addDiet(Diet diet) {
    final dietModel = DietModel.fromEntity(diet);
    return remoteDataSource.addDiet(dietModel);
  }

  @override
  Stream<List<Diet>> dietList(String userId) {
    return remoteDataSource.dietList(userId).map((dietModelList) =>
        dietModelList.map((dietModel) => dietModel.toEntity()).toList());
  }

  @override
  Future<void> updateDiet(Diet diet) {
    final dietModel = DietModel.fromEntity(diet);
    return remoteDataSource.updateDiet(dietModel: dietModel);
  }
}
