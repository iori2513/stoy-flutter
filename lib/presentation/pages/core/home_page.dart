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
    final bodyDataList = ref.watch(bodyDataListNotifierProvider);
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
          margin: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Center(
            child: Column(
              children: [
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: BodyWeightChart(bodyData: bodyDataList.bodyDataList))
              ],
            ),
          ),
        ));
  }
}
