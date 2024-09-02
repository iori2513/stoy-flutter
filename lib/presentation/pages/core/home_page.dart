import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/shared/body/body_data_list/body_data_list_provider.dart';
import 'package:stoy/presentation/widgets/line_chart.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bodyDataListNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('STOY',
            style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: Center(
          child: Column(
            children: [
              if (state.bodyDataList.isNotEmpty)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.h),
                      SizedBox(
                        child: Text('体重', style: TextStyle(fontSize: 24.sp)),
                      ),
                      SizedBox(height: 30.h),
                      BodyWeightChart(bodyData: state.bodyDataList),
                    ],
                  ),
                )
              else
                const Text('データがありません'),
            ],
          ),
        ),
      ),
    );
  }
}
