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
      height: 97.h,
      width: 327.w,
      decoration: _buildContainerDecoration(),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          _buildDietImage(),
          SizedBox(width: 10.w),
          _buildDietInfo(),
          const Spacer(),
          _buildForwardIcon(),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }

  BoxDecoration _buildContainerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15.h),
      border: Border.all(color: AppColor.borderColor),
      color: AppColor.backGroundGrey,
    );
  }

  Widget _buildDietImage() {
    return Container(
      height: 61.h,
      width: 82.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.h)),
      child: diet.photoUrl.isNotEmpty
          ? Image.network(diet.photoUrl)
          : const Icon(Icons.no_meals),
    );
  }

  Widget _buildDietInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Text(
          diet.title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
        SizedBox(height: 5.h),
        _buildNutritionInfo('タンパク質', diet.nutrition.protein),
        _buildNutritionInfo('脂質', diet.nutrition.fat),
        _buildNutritionInfo('炭水化物', diet.nutrition.carbohydrates),
        SizedBox(height: 10.h),
      ],
    );
  }

  Widget _buildNutritionInfo(String label, num value) {
    return Text(
      '$label: ${value}g',
      style: const TextStyle(fontSize: 10, color: AppColor.textGrey),
    );
  }

  Widget _buildForwardIcon() {
    return const Icon(
      Icons.arrow_forward_ios,
      size: 20,
    );
  }
}
