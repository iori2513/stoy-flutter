import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:stoy/data/models/diet/nutrition_model.dart';
import 'package:stoy/domain/entities/diet/diet.dart';

class DietModel extends Equatable {
  final String docId;
  final String userId;
  final String title;
  final String content;
  final DateTime date;
  final NutritionModel nutrition;
  final String photoUrl;

  const DietModel(
      {required this.docId,
      required this.userId,
      required this.title,
      required this.content,
      required this.date,
      required this.nutrition,
      required this.photoUrl});

  // Firestoreに保存するためのMapに変換
  Map<String, dynamic> toFirestore() {
    return {
      'userId': userId,
      'title': title,
      'content': content,
      'date': date,
      'nutrition': nutrition.toMap(),
      'photoUrl': photoUrl,
    };
  }

  static DietModel fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    var data = snapshot.data()!;
    return DietModel(
      docId: snapshot.id,
      userId: data['userId'] as String,
      title: data['title'] as String,
      content: data['content'] as String,
      date: (data['date'] as Timestamp).toDate(),
      nutrition: NutritionModel.fromMap(data['nutrition']),
      photoUrl: data['photoUrl'] as String,
    );
  }

  Diet toEntity() {
    return Diet(
        docId: docId,
        userId: userId,
        title: title,
        content: content,
        date: date,
        nutrition: nutrition.toEntity(),
        photoUrl: photoUrl);
  }

  static DietModel fromEntity(Diet diet) {
    return DietModel(
        docId: diet.docId,
        userId: diet.userId,
        title: diet.title,
        content: diet.content,
        date: diet.date,
        nutrition: NutritionModel.fromEntity(diet.nutrition),
        photoUrl: diet.photoUrl);
  }

  @override
  List<Object?> get props => [];
}
