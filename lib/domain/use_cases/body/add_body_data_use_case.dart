import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/repositories/body/body_repository.dart';

class AddBodyDataUseCase {
  final BodyRepository bodyRepository;

  AddBodyDataUseCase(this.bodyRepository);

  Future<void> call(Body body) {
    return bodyRepository.addBodyData(body);
  }
}
