import 'package:stoy/data/data_sources/body/body_remote_data_source.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/repositories/body/body_repository.dart';

class BodyRepositoryImpl implements BodyRepository {
  final BodyRemoteDataSource remoteDataSource;

  const BodyRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> addBodyData(Body body) {
    return remoteDataSource.addBodyData(body);
  }

  @override
  Stream<List<Body>> bodyDataList(String userId) {
    return remoteDataSource.fetchBodyDataList(userId);
  }

  @override
  Future<void> updateBodyData(Body body) {
    return remoteDataSource.updateDiet(body: body);
  }
}
