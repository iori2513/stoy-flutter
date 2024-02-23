import 'package:equatable/equatable.dart';

class Nutrition extends Equatable {
  final double protein;
  final double fat;
  final double carbohydrates;

  const Nutrition(
      {required this.protein, required this.fat, required this.carbohydrates});

  @override
  List<Object?> get props => throw UnimplementedError();
}
