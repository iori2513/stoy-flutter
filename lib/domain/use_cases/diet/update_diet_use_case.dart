import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/repositories/diet/diet_repository.dart';

class UpdateDietUseCase {
  final DietRepository dietRepository;

  UpdateDietUseCase({required this.dietRepository});

  Future<void> call(Diet diet) {
    return dietRepository.addDiet(diet);
  }
}
