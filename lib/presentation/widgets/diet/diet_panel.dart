import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/image_picker_manager.dart';

class DietPanel extends StatelessWidget {
  const DietPanel({super.key});

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
            child: Image.network(ImagePickerManager.getDefaultDownloadImageUrl(
                ImageCategory.diet)),
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
              const Text(
                '1食目',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text(
                'タンパク質: 500g',
                style: TextStyle(fontSize: 10, color: AppColor.textGrey),
              ),
              const Text(
                '脂質: 400g',
                style: TextStyle(fontSize: 10, color: AppColor.textGrey),
              ),
              const Text(
                '炭水化物: 500g',
                style: TextStyle(fontSize: 10, color: AppColor.textGrey),
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
