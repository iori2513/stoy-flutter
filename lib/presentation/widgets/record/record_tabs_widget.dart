import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/providers/single/record/record_notifier.dart';
import 'package:stoy/presentation/providers/single/record/record_state.dart';
import 'package:stoy/presentation/widgets/record/record_body_data_tab_widget.dart';
import 'package:stoy/presentation/widgets/record/record_diet_tab_widget.dart';

class RecordTabsWidget extends StatelessWidget {
  const RecordTabsWidget({
    super.key,
    required this.notifier,
    required this.targetDateDietList,
    required this.bodyDataList,
  });

  final RecordNotifier notifier;
  final List<Diet> targetDateDietList;
  final List<Body> bodyDataList;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            indicatorColor: AppColor.primaryColor,
            labelColor: AppColor.primaryColor,
            tabs: const [
              Tab(
                  icon: Icon(
                Icons.restaurant,
              )),
              Tab(icon: Icon(Icons.accessibility)),
            ],
            onTap: (index) {
              notifier.switchTab(TabType.values[index]);
            },
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: TabBarView(
              children: [
                RecordDietTabWidget(
                    targetDateDietList: targetDateDietList, notifier: notifier),
                RecordBodyDataTabWidget(
                    bodyDataList: bodyDataList, notifier: notifier),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
