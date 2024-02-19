import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/repositories/diet/diet_repository.dart';

class UpdateDiet {
  final DietRepository dietRepository;

  UpdateDiet({required this.dietRepository});

  Future<void> call(Diet diet) {
    return dietRepository.addDiet(diet);
  }
}
