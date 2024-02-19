import 'package:stoy/domain/entities/diet/diet.dart';

abstract class DietRepository {
  Future<void> addDiet(Diet diet);

  Future<List<Diet>> getDietList(String userId);

  Future<void> update(Diet diet);
}
