import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/entities/diet/nutrition.dart';
import 'package:stoy/domain/use_cases/diet/add_diet_use_case.dart';
import 'package:stoy/image_picker_manager.dart';
import 'package:stoy/presentation/providers/diet/detail/diet_detail_state.dart';
import 'package:stoy/utils/time_picker.dart';

class DietDetailNotifier extends StateNotifier<DietDetailState> {
  final AddDietUseCase addDietUseCase;

  DietDetailNotifier(super._state, {required this.addDietUseCase, Diet? diet}) {
    if (diet != null) {
      state = DietDetailState(
          nutrition: diet.nutrition, date: diet.date, time: TimeOfDay.now());
    }
  }

  void addDiet(String userId) async {
    final diet = Diet(
        docId: '',
        userId: userId,
        title: state.title,
        content: state.content,
        date: state.date,
        nutrition: state.nutrition);
    state = state.copyWith(isLoading: true);
    try {
      await addDietUseCase.call(diet);
    } catch (error) {
      state = state.copyWith(errorMessage: error.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void onChangeText({
    String? title,
    String? content,
  }) {
    state = state.copyWith(
        title: title ?? state.title, content: content ?? state.content);
  }

  void onChangeNutrition(
      {double? protein, double? fat, double? carbohydrates}) {
    state = state.copyWith(
        nutrition: Nutrition(
            protein: protein ?? state.nutrition.protein,
            fat: fat ?? state.nutrition.fat,
            carbohydrates: carbohydrates ?? state.nutrition.carbohydrates));
  }

  void openPickTimeDialog(BuildContext context) async {
    final time = await pickTime(context, state.time);
    if (time != null) {
      state = state.copyWith(time: time);
    }
  }

  void selectImage(String userId) async {
    state = state.copyWith(isLoadingImage: true);
    final photoUrl = await ImagePickerManager.getImageFromLibrary(
        userId: userId, imageCategory: ImageCategory.diet);
    state = state.copyWith(photoUrl: photoUrl, isLoadingImage: false);
  }
}
