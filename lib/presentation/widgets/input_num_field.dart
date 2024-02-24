import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';

class InputNumField extends StatefulWidget {
  final void Function(double value) onChangeNum;
  final String placeholder;
  final double height;
  final double width;
  final double initialValue;

  const InputNumField({
    super.key,
    required this.onChangeNum,
    this.placeholder = '',
    required this.height,
    required this.width,
    this.initialValue = 0,
  });

  @override
  State<InputNumField> createState() => _InputNumFieldState();
}

class _InputNumFieldState extends State<InputNumField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        initialValue: widget.initialValue.toString(),
        onChanged: (String val) {
          widget.onChangeNum(double.parse(val.isEmpty ? '0' : val) ?? 0);
        },
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
          fillColor: AppColor.backGroundGrey,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.clearWhite, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: widget.placeholder,
          hintStyle: const TextStyle(color: AppColor.textGrey, fontSize: 13),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
