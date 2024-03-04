import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/repositories/body/body_repository.dart';

class UpdateBodyDataUseCase {
  final BodyRepository bodyRepository;

  UpdateBodyDataUseCase(this.bodyRepository);

  Future<void> call(Body body) {
    return bodyRepository.updateBodyData(body);
  }
}
