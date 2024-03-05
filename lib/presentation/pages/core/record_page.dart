import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/shared/body/body_data_list/body_data_list_provider.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_provider.dart';
import 'package:stoy/presentation/providers/single/record/record_provider.dart';
import 'package:stoy/presentation/widgets/global_side_bar.dart';
import 'package:stoy/presentation/widgets/record/record_tab_widget.dart';
import 'package:stoy/presentation/widgets/weekly_date_picker.dart';

class RecordPage extends ConsumerWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(recordNotifierProvider.notifier);
    final state = ref.watch(recordNotifierProvider);
    final dietListState = ref.watch(dietListNotifierProvider);
    final bodyDataListState = ref.watch(bodyDataListNotifierProvider);

    final targetDateDietList = dietListState.diets
        .where((diet) =>
            diet.date.year == state.date.year &&
            diet.date.month == state.date.month &&
            diet.date.day == state.date.day)
        .toList();

    final targetBodyDataList = bodyDataListState.bodyDataList.where((value) {
      final List<int> ymdSplit =
          value.ymd.split('-').map((e) => int.parse(e)).toList();
      return ymdSplit[0] == state.date.year &&
          ymdSplit[1] == state.date.month &&
          ymdSplit[2] == state.date.day;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('STOY',
            style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        actions: [
          IconButton(
              onPressed: () {
                notifier.pressCreateButton(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
              height: 120.h,
              child: WeeklyDatePicker(onChangeDate: notifier.onChangeDate)),
          Expanded(
            child: RecordTabWidget(
                notifier: notifier,
                targetDateDietList: targetDateDietList,
                bodyDataList: targetBodyDataList),
          ),
        ],
      ),
      drawer: const GlobalSideBar(),
    );
  }
}
