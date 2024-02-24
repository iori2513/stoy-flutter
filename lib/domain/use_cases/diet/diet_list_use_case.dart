import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/repositories/diet/diet_repository.dart';

class DietListUseCase {
  final DietRepository dietRepository;

  DietListUseCase({required this.dietRepository});

  Stream<List<Diet>> call(String userId) {
    return dietRepository.dietList(userId);
  }
}
