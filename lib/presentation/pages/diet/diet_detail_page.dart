import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/providers/diet/detail/diet_detail_provider.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/widgets/common_text_field.dart';
import 'package:stoy/presentation/widgets/input_num_field.dart';
import 'package:stoy/presentation/widgets/outlined_button.dart';

class DietDetailPage extends ConsumerWidget {
  final Diet diet;

  const DietDetailPage(this.diet, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dietDetailProvider(diet));
    final notifier = ref.watch(dietDetailProvider(diet).notifier);
    final user = ref.watch(authUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Record Diet',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
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
                const Row(
                  children: [
                    Text(
                      'タイトル',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                  ],
                ),
                CommonTextField(
                  onChangeText: (val) {
                    notifier.onChangeText(title: val);
                  },
                  initialValue: state.title,
                  height: 50.h,
                  width: 335.w,
                  maxLines: 1,
                  placeholder: 'タイトルを記入',
                ),
                Row(
                  children: [
                    const Text(
                      '時刻',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      state.time.format(context),
                      style: const TextStyle(fontSize: 18),
                    ),
                    IconButton(
                      onPressed: () {
                        notifier.openPickTimeDialog(context);
                      },
                      icon: const Icon(Icons.access_time_outlined),
                      color: AppColor.primaryColor,
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      '内容',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                  ],
                ),
                CommonTextField(
                  onChangeText: (val) {
                    notifier.onChangeText(content: val);
                  },
                  initialValue: state.content,
                  height: 240.h,
                  width: 335.w,
                  minLines: 5,
                  maxLines: 10,
                  placeholder: '食事内容を記入',
                ),
                const Row(
                  children: [
                    Text('栄養成分'),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    const Text(
                      'P',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    InputNumField(
                        onChangeNum: (val) {
                          notifier.onChangeNutrition(protein: val);
                        },
                        initialValue: state.nutrition.protein,
                        height: 50.h,
                        width: 200.w),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text('g')
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'F',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    InputNumField(
                        onChangeNum: (val) {
                          notifier.onChangeNutrition(fat: val);
                        },
                        initialValue: state.nutrition.fat,
                        height: 50.h,
                        width: 200.w),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text('g')
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'C',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    InputNumField(
                        onChangeNum: (val) {
                          notifier.onChangeNutrition(carbohydrates: val);
                        },
                        initialValue: state.nutrition.carbohydrates,
                        height: 50.h,
                        width: 200.w),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text('g')
                  ],
                ),
                Text('${state.title}'),
                SizedBox(
                  height: 50.h,
                ),
                OutlinedWideButton(
                  label: '保存する',
                  color: AppColor.primaryColor,
                  onPressed: () {
                    return user.when(
                        data: (user) {
                          notifier.addDiet(user.userId);
                        },
                        error: (Object error, StackTrace stackTrace) {},
                        loading: () {});
                  },
                  isLoading: state.isLoading,
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
