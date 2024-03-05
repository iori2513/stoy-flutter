import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';

import 'package:stoy/constants/text_styles.dart';

class OutlinedWideButton extends StatefulWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;
  final bool isLoading;

  const OutlinedWideButton(
      {super.key,
      required this.label,
      required this.color,
      required this.onPressed,
      this.isLoading = false});

  @override
  State<OutlinedWideButton> createState() => _OutlinedWideButtonState();
}

class _OutlinedWideButtonState extends State<OutlinedWideButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size(396.w, 50.h),
        backgroundColor: widget.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: widget.onPressed,
      child: widget.isLoading
          ? SizedBox(
              height: 30.h,
              width: 30.h,
              child: const CircularProgressIndicator(
                color: AppColor.clearWhite,
              ),
            )
          : Text(
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColor.clearWhite,
                fontFamily: FontFamily.primary,
              ),
              widget.label,
            ),
    );
  }
}
