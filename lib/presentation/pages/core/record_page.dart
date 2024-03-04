import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_provider.dart';
import 'package:stoy/presentation/providers/single/record/record_provider.dart';
import 'package:stoy/presentation/widgets/diet/diet_panel.dart';
import 'package:stoy/presentation/widgets/global_side_bar.dart';
import 'package:stoy/presentation/widgets/weekly_date_picker.dart';

class RecordPage extends ConsumerWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(recordNotifierProvider.notifier);
    final state = ref.watch(recordNotifierProvider);
    final dietListState = ref.watch(dietListNotifierProvider);

    final targetDateDietList = dietListState.diets
        .where((diet) =>
            diet.date.year == state.date.year &&
            diet.date.month == state.date.month &&
            diet.date.day == state.date.day)
        .toList();
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
                notifier.goToCreateDietPage(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          WeeklyDatePicker(onChangeDate: notifier.onChangeDate),
          Expanded(
            child: ListView.builder(
              itemCount: targetDateDietList.length,
              itemBuilder: (context, index) {
                return Column(children: [
                  GestureDetector(
                    onTap: () {
                      notifier.goToEditDietPage(
                          context: context, diet: targetDateDietList[index]);
                    },
                    child: DietPanel(diet: targetDateDietList[index]),
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ]);
              },
            ),
          ),
        ],
      ),
      drawer: const GlobalSideBar(),
    );
  }
}
