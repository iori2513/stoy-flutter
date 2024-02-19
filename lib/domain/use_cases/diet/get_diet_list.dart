import 'package:stoy/domain/repositories/diet/diet_repository.dart';

class GetDietList {
  final DietRepository dietRepository;

  GetDietList({required this.dietRepository});

  Future<void> call(String userId) {
    return dietRepository.getDietList(userId);
  }
}
