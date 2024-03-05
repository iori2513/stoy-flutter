import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/presentation/providers/single/body/detail/body_detail_provider.dart';
import 'package:stoy/presentation/widgets/body/detail/body_detail_page_section_title.dart';
import 'package:stoy/presentation/widgets/common_text_field.dart';
import 'package:stoy/presentation/widgets/input_num_field.dart';
import 'package:stoy/presentation/widgets/outlined_button.dart';

class BodyDataDetailPage extends ConsumerWidget {
  final Body bodyData;

  const BodyDataDetailPage({super.key, required this.bodyData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(bodyDetailNotifierProvider(bodyData).notifier);
    final state = ref.watch(bodyDetailNotifierProvider(bodyData));
    final ymdSplit = bodyData.ymd.split('-');
    return Scaffold(
      appBar: AppBar(
        title: Text(
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            '${notifier.monthDayText}の記録'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 335.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    const BodyDetailPageSectionTitle(label: '体重'),
                    SizedBox(
                      width: 30.w,
                    ),
                    InputNumField(
                        onChangeNum: (val) {
                          notifier.onChangeValue(weight: val);
                        },
                        initialValue: state.bodyData.weight,
                        height: 50.h,
                        width: 150.w),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text('kg')
                  ],
                ),
                Row(
                  children: [
                    const BodyDetailPageSectionTitle(label: '体脂肪率'),
                    SizedBox(
                      width: 30.w,
                    ),
                    InputNumField(
                        onChangeNum: (val) {
                          notifier.onChangeValue(fatPercentage: val);
                        },
                        initialValue: state.bodyData.fatPercentage,
                        height: 50.h,
                        width: 150.w),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text('%')
                  ],
                ),
                Row(
                  children: [
                    const BodyDetailPageSectionTitle(label: '体温'),
                    SizedBox(
                      width: 30.w,
                    ),
                    InputNumField(
                        onChangeNum: (val) {
                          notifier.onChangeValue(bodyTemp: val);
                        },
                        initialValue: state.bodyData.bodyTemp,
                        height: 50.h,
                        width: 150.w),
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
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                  ],
                ),
                CommonTextField(
                  onChangeText: (val) {
                    notifier.onChangeValue(memo: val);
                  },
                  initialValue: state.bodyData.memo,
                  height: 240.h,
                  width: 335.w,
                  minLines: 10,
                  maxLines: 10,
                  placeholder: 'メモを記入',
                ),
                SizedBox(
                  height: 50.h,
                ),
                OutlinedWideButton(
                  label: notifier.executeButtonText,
                  color: AppColor.primaryColor,
                  onPressed: () {
                    print(notifier.authState.user);
                    notifier.executeSave(context: context);
                  },
                  isLoading: state.isLoading,
                ),
                SizedBox(
                  height: 60.h,
                )
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       _pickTime(context);
      //     },
      //     child: const Icon(Icons.photo_album)),
    );
  }
}
