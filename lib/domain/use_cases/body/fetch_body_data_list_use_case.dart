import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/repositories/body/body_repository.dart';

class FetchBodyDataListUseCase {
  final BodyRepository bodyRepository;

  FetchBodyDataListUseCase(this.bodyRepository);

  Stream<List<Body>> call(String userId) {
    return bodyRepository.bodyDataList(userId);
  }
}
