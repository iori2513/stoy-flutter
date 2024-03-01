import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    required double protein,
    required double fat,
    required double carbohydrates,
  }) = _Nutrition;

  factory Nutrition.empty() =>
      const Nutrition(protein: 0, fat: 0, carbohydrates: 0);
}
