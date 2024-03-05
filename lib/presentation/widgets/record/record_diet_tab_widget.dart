import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.w),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          const NutritionAnalyzeDailyWidget(),
          RecordDietDailyWidget(
              targetDateDietList: targetDateDietList, notifier: notifier),
        ],
      ),
    );
  }
}
