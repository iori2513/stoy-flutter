import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/use_cases/diet/add_diet_use_case.dart';
import 'package:stoy/domain/use_cases/diet/update_diet_use_case.dart';
import 'package:stoy/image_picker_manager.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';
import 'package:stoy/presentation/providers/single/diet/detail/diet_detail_state.dart';
import 'package:stoy/utils/time_picker.dart';

class DietDetailNotifier extends StateNotifier<DietDetailState> {
  final AddDietUseCase addDietUseCase;
  final UpdateDietUseCase updateDietUseCase;
  final AuthState authState;

  DietDetailNotifier(
      {required this.addDietUseCase,
      required this.updateDietUseCase,
      required this.authState,
      Diet? diet})
      : super(DietDetailState.initial()) {
    if (diet != null) {
      state = DietDetailState(diet: diet, time: TimeOfDay.now());
    }
  }

  bool get _isNewData {
    return state.diet.docId.isEmpty;
  }

  Future<void> addDiet(String userId) async {
    final diet = Diet(
        docId: '',
        userId: userId,
        title: state.diet.title,
        content: state.diet.content,
        date: state.diet.date,
        nutrition: state.diet.nutrition,
        photoUrl: state.diet.photoUrl);
    return addDietUseCase.call(diet);
  }

  Future<void> update(String userId) async {
    return updateDietUseCase.call(state.diet);
  }

  String get executeButtonText {
    if (_isNewData) {
      return '保存する';
    }
    return '更新する';
  }

  void executeSave({required BuildContext context}) {
    state = state.copyWith(isLoading: true);
    final userId = authState.user.userId;
    if (_isNewData) {
      addDiet(userId).then((value) {
        Navigator.pop(context);
      }).catchError((error) {
        state = state.copyWith(errorMessage: error.toString());
      }).then((value) {
        state = state.copyWith(isLoading: false);
      });
    } else {
      update(userId).then((value) {
        Navigator.pop(context);
      }).catchError((error) {
        state = state.copyWith(errorMessage: error.toString());
      }).then((value) {
        state = state.copyWith(isLoading: false);
      });
    }
  }

  void onChangeText({
    String? title,
    String? content,
  }) {
    state = state.copyWith(
        diet: state.diet.copyWith(
            title: title ?? state.diet.title,
            content: content ?? state.diet.content));
  }

  void onChangeNutrition(
      {double? protein, double? fat, double? carbohydrates}) {
    state = state.copyWith(
      diet: state.diet.copyWith(
          nutrition: state.diet.nutrition.copyWith(
              protein: protein ?? state.diet.nutrition.protein,
              fat: fat ?? state.diet.nutrition.fat,
              carbohydrates:
                  carbohydrates ?? state.diet.nutrition.carbohydrates)),
    );
  }

  void openPickTimeDialog(BuildContext context) async {
    final TimeOfDay? time = await pickTime(context, state.time);
    if (time != null) {
      state = state.copyWith(
          time: time,
          diet: state.diet.copyWith(
              date: DateTime(state.diet.date.year, state.diet.date.month,
                  state.diet.date.day, time.hour, time.minute)));
    }
  }

  void selectImage(String userId) async {
    state = state.copyWith(isLoadingImage: true);
    final photoUrl = await ImagePickerManager.getImageFromLibrary(
        userId: userId, imageCategory: ImageCategory.diet);
    state = state.copyWith(
        isLoadingImage: false, diet: state.diet.copyWith(photoUrl: photoUrl));
  }
}
