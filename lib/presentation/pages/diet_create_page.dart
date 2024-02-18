import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/presentation/widgets/common_text_field.dart';
import 'package:stoy/presentation/widgets/input_num_field.dart';

class DietCreatePage extends StatelessWidget {
  const DietCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  onChangeText: (val) {},
                  height: 50.h,
                  width: 335.w,
                  maxLines: 1,
                  placeholder: 'タイトルを記入',
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
                  onChangeText: (val) {},
                  height: 240.h,
                  width: 335.w,
                  minLines: 5,
                  maxLines: 10,
                  placeholder: '食事内容を記入',
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
                        onChangeNum: (val) {}, height: 50.h, width: 200.w),
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
                        onChangeNum: (val) {}, height: 50.h, width: 200.w),
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
                        onChangeNum: (val) {}, height: 50.h, width: 200.w),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text('g')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
