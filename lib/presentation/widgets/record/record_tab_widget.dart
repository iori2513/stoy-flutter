import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/providers/single/record/record_notifier.dart';
import 'package:stoy/presentation/providers/single/record/record_state.dart';
import 'package:stoy/presentation/widgets/body/detail/body_detail_page_section_title.dart';
import 'package:stoy/presentation/widgets/diet/diet_panel.dart';
import 'package:stoy/presentation/widgets/outlined_button.dart';

class RecordTabWidget extends StatelessWidget {
  const RecordTabWidget({
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
          // WeeklyDatePicker(onChangeDate: notifier.onChangeDate),
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
                Container(
                  margin: EdgeInsets.all(10.w),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '食事記録一覧',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: targetDateDietList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(10.w),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      notifier.goToEditDietPage(
                                          context: context,
                                          diet: targetDateDietList[index]);
                                    },
                                    child: DietPanel(
                                        diet: targetDateDietList[index]),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(10.w),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '身体管理記録',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: bodyDataList.isEmpty
                            ? const Text('データなし')
                            : Container(
                                margin: EdgeInsets.all(40.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Row(
                                      children: [
                                        const BodyDetailPageSectionTitle(
                                            label: '体重'),
                                        SizedBox(
                                          width: 30.w,
                                        ),
                                        Text('${bodyDataList[0].weight}'),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        const Text('kg')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const BodyDetailPageSectionTitle(
                                            label: '体脂肪率'),
                                        SizedBox(
                                          width: 30.w,
                                        ),
                                        Text(
                                            '${bodyDataList[0].fatPercentage}'),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        const Text('%')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const BodyDetailPageSectionTitle(
                                            label: '体温'),
                                        SizedBox(
                                          width: 30.w,
                                        ),
                                        Text('${bodyDataList[0].bodyTemp}'),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        const Text('℃')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          'メモ',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(bodyDataList[0].memo),
                                        const Spacer(),
                                      ],
                                    ),
                                    const Spacer(),
                                    OutlinedWideButton(
                                      label: '編集する',
                                      color: AppColor.primaryColor,
                                      onPressed: () {
                                        notifier.goToEditBodyDataPage(
                                            context: context,
                                            bodyData: bodyDataList[0]);
                                      },
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
