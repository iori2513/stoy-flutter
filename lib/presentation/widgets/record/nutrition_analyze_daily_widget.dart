import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/domain/entities/nutrition/nutrition.dart';

class NutritionAnalyzeDailyWidget extends StatelessWidget {
  const NutritionAnalyzeDailyWidget({
    super.key,
    required this.nutrition,
  });

  final Nutrition nutrition;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Row(
        children: [
          SizedBox(
            width: 240.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'カロリー分析',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Spacer(),
                  ],
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 10.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                            child: Row(
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 10.w,
                                  color: Colors.blue,
                                ),
                                const SizedBox(width: 10),
                                const Text('タンパク質'),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text('${nutrition.proteinCalorie}kcal'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                            child: Row(
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 10.w,
                                  color: Colors.red,
                                ),
                                const SizedBox(width: 10),
                                const Text('脂質'),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text('${nutrition.fatCalorie}kcal'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                            child: Row(
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 10.w,
                                  color: Colors.green,
                                ),
                                const SizedBox(width: 10),
                                const Text('炭水化物'),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text('${nutrition.carbohydratesCalorie}kcal'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                            child: const Row(
                              children: [
                                Text('総カロリー'),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text('${nutrition.totalCalorie}kcal'),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 100.w,
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 10,
                sectionsSpace: 2,
                startDegreeOffset: -90,
                sections: [
                  PieChartSectionData(
                    color: Colors.blue,
                    value: nutrition.proteinCalorie,
                    title: 'タンパク質',
                    radius: 50,
                    titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: Colors.red,
                    value: nutrition.fatCalorie,
                    title: '脂質',
                    radius: 50,
                    titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: Colors.green,
                    value: nutrition.carbohydratesCalorie,
                    title: '炭水化物',
                    radius: 50,
                    titleStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                  ),
                  // 他のセクションデータを追加
                ],
              ),
            ),
          ),
          SizedBox(
            width: 24.w,
          )
        ],
      ),
    );
  }
}
