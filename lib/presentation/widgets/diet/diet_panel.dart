import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/domain/entities/diet/diet.dart';

class DietPanel extends StatelessWidget {
  final Diet diet;

  const DietPanel({super.key, required this.diet});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(color: AppColor.borderColor),
        color: AppColor.backGroundGrey,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 61.h,
            width: 82.w,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.h)),
            child: diet.photoUrl.isNotEmpty
                ? Image.network(diet.photoUrl)
                : const Icon(Icons.no_meals),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                diet.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'タンパク質: ${diet.nutrition.protein}g',
                style: const TextStyle(fontSize: 10, color: AppColor.textGrey),
              ),
              Text(
                '脂質: ${diet.nutrition.fat}g',
                style: const TextStyle(fontSize: 10, color: AppColor.textGrey),
              ),
              Text(
                '炭水化物: ${diet.nutrition.carbohydrates}g',
                style: const TextStyle(fontSize: 10, color: AppColor.textGrey),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
    );
  }
}
