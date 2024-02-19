import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/presentation/widgets/common_text_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonTextField(
          onChangeText: (val) {},
          height: 800.h,
          width: 300.w,
          placeholder: 'テキストを入力してください',
        ),
      ),
    );
  }
}
