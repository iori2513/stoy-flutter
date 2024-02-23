import 'package:equatable/equatable.dart';
import 'package:stoy/domain/entities/diet/nutrition.dart';

class NutritionModel extends Equatable {
  final double protein;
  final double fat;
  final double carbohydrates;

  const NutritionModel(
      {required this.protein, required this.fat, required this.carbohydrates});

  Map<String, dynamic> toMap() {
    return {
      'protein': protein,
      'fat': fat,
      'carbohydrates': carbohydrates,
    };
  }

  static NutritionModel fromMap(Map<String, dynamic> map) {
    return NutritionModel(
        protein: map['protein'] ?? 0,
        fat: map['fat'] ?? 0,
        carbohydrates: map['carbohydrates'] ?? 0);
  }

  Nutrition toEntity() {
    return Nutrition(protein: protein, fat: fat, carbohydrates: carbohydrates);
  }

  static NutritionModel fromEntity(Nutrition nutrition) {
    return NutritionModel(
        protein: nutrition.protein,
        fat: nutrition.fat,
        carbohydrates: nutrition.carbohydrates);
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
