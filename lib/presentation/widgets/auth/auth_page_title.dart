import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/text_styles.dart';

class AuthPageTitle extends StatelessWidget {
  final String title;
  final String description;

  const AuthPageTitle(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396.w,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.primary),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.primary),
            ),
          )
        ],
      ),
    );
  }
}
