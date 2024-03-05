import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/providers/single/record/record_notifier.dart';
import 'package:stoy/presentation/widgets/diet/diet_panel.dart';

class RecordDietDailyWidget extends StatelessWidget {
  const RecordDietDailyWidget({
    super.key,
    required this.targetDateDietList,
    required this.notifier,
  });

  final List<Diet> targetDateDietList;
  final RecordNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '食事記録一覧',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: targetDateDietList.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsetsDirectional.only(start: 10.h, top: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          notifier.goToEditDietPage(
                              context: context,
                              diet: targetDateDietList[index]);
                        },
                        child: DietPanel(diet: targetDateDietList[index]),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
