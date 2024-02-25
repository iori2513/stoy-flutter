import 'package:equatable/equatable.dart';

class Nutrition extends Equatable {
  final double protein;
  final double fat;
  final double carbohydrates;

  const Nutrition(
      {required this.protein, required this.fat, required this.carbohydrates});

  static Nutrition empty() {
    return const Nutrition(protein: 0, fat: 0, carbohydrates: 0);
  }

  @override
  List<Object?> get props => [protein, fat, carbohydrates];
}
