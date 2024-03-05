import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/firebase_manager.dart';

class BodyRemoteDataSource {
  final ref = FirebaseManager.firestore.collection('body').withConverter<Body>(
      fromFirestore: (snapshot, _) => Body.fromFirestore(snapshot),
      toFirestore: (body, _) => body.toFirestore());

  Future<void> addBodyData(Body body) {
    print(body);
    return ref.add(body);
  }

  Stream<List<Body>> fetchBodyDataList(String userId) {
    return ref
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  Future<void> updateBodyData({required Body body}) {
    return ref.doc(body.docId).set(body);
  }
}
