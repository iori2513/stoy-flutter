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

extension NutritionExtension on Nutrition {
  double get proteinCalorie {
    return (protein * 4).floorToDouble();
  }

  double get fatCalorie {
    return (fat * 9).floorToDouble();
  }

  double get carbohydratesCalorie {
    return (carbohydrates * 4).floorToDouble();
  }

  double get totalCalorie {
    return proteinCalorie + fatCalorie + carbohydratesCalorie;
  }
}
