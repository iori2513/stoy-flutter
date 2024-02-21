import 'package:stoy/domain/entities/diet/diet.dart';

abstract class DietRepository {
  Future<void> addDiet(Diet diet);

  Stream<List<Diet>> dietList(String userId);

  Future<void> update(Diet diet);
}
