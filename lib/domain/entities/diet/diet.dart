import 'package:equatable/equatable.dart';
import 'package:stoy/domain/entities/diet/nutrition.dart';

class Diet extends Equatable {
  final String docId;
  final String userId;
  final String title;
  final String content;
  final DateTime date;
  final Nutrition nutrition;

  const Diet(
      {required this.docId,
      required this.userId,
      required this.title,
      required this.content,
      required this.date,
      required this.nutrition});

  static Diet empty(String userId) {
    return Diet(
        docId: '',
        userId: userId,
        title: '',
        content: '',
        date: DateTime.now(),
        nutrition: Nutrition.empty());
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
