import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/domain/entities/nutrition/nutrition.dart';

part 'diet.freezed.dart';

@freezed
class Diet with _$Diet {
  const factory Diet({
    required String docId,
    required String userId,
    required String title,
    required String content,
    required DateTime date,
    required Nutrition nutrition,
    required String photoUrl,
  }) = _Diet;

  factory Diet.empty({required String userId, DateTime? date}) => Diet(
        docId: '',
        userId: userId,
        title: '',
        content: '',
        date: date ?? DateTime.now(),
        nutrition: Nutrition.empty(),
        photoUrl: '',
      );
}
