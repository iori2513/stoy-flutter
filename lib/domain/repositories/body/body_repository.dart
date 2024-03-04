import 'package:stoy/domain/entities/body/body.dart';

abstract class BodyRepository {
  Future<void> addBodyData(Body body);

  Stream<List<Body>> bodyDataList(String userId);

  Future<void> updateBodyData(Body body);
}
