import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/entities/nutrition/nutrition.dart';
import 'package:stoy/presentation/providers/single/record/record_notifier.dart';
import 'package:stoy/presentation/widgets/record/nutrition_analyze_daily_widget.dart';
import 'package:stoy/presentation/widgets/record/record_diet_daily_widget.dart';

class RecordDietTabWidget extends StatelessWidget {
  const RecordDietTabWidget({
    super.key,
    required this.targetDateDietList,
    required this.notifier,
  });

  final List<Diet> targetDateDietList;
  final RecordNotifier notifier;

  Nutrition get totalNutrition {
    Nutrition nutrition = const Nutrition(protein: 0, fat: 0, carbohydrates: 0);
    for (var value in targetDateDietList) {
      nutrition = Nutrition(
          protein: nutrition.protein + value.nutrition.protein,
          fat: nutrition.fat + value.nutrition.fat,
          carbohydrates:
              nutrition.carbohydrates + value.nutrition.carbohydrates);
    }
    return nutrition;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.w),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          NutritionAnalyzeDailyWidget(nutrition: totalNutrition),
          RecordDietDailyWidget(
              targetDateDietList: targetDateDietList, notifier: notifier),
        ],
      ),
    );
  }
}
