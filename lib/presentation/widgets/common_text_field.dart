import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';

class CommonTextField extends StatefulWidget {
  final void Function(String value) onChangeText;
  final String placeholder;
  final double height;
  final double width;
  final int? minLines;
  final int? maxLines;
  final String initialValue;

  const CommonTextField(
      {super.key,
      required this.onChangeText,
      this.placeholder = '',
      required this.height,
      required this.width,
      this.minLines = 1,
      this.maxLines,
      this.initialValue = ''});

  @override
  State<CommonTextField> createState() => _CommonTextField();
}

class _CommonTextField extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        initialValue: widget.initialValue,
        textAlignVertical: TextAlignVertical.center,
        onChanged: widget.onChangeText,
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
        keyboardType: TextInputType.multiline,
        maxLines: widget.minLines,
        minLines: widget.minLines,
      ),
    );
  }
}
