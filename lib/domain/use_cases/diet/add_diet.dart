import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/repositories/diet/diet_repository.dart';

class AddDiet {
  final DietRepository dietRepository;

  AddDiet({required this.dietRepository});

  Future<void> call(Diet diet) {
    return dietRepository.addDiet(diet);
  }
}
