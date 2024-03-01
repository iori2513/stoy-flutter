import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stoy/data/models/diet/diet_model.dart';

class DietRemoteDataSource {
  final ref = FirebaseFirestore.instance
      .collection('diets')
      .withConverter<DietModel>(
          fromFirestore: (snapshot, _) => DietModel.fromFirestore(snapshot),
          toFirestore: (dietModel, _) => dietModel.toFirestore());

  Future<void> addDiet(DietModel diet) {
    return ref.add(diet);
  }

  Stream<List<DietModel>> dietList(String userId) {
    return ref
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  Future<void> updateDiet({required DietModel dietModel}) async {
    return ref.doc(dietModel.docId).set(dietModel);
  }
}
