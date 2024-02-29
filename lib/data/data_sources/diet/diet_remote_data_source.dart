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

  Future<void> updateDiet(DietModel diet) async {
    return ref.doc(diet.docId).set(diet);
  }
}
