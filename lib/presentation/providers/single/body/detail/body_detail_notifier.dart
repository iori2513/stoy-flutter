import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/use_cases/body/add_body_data_use_case.dart';
import 'package:stoy/domain/use_cases/body/update_body_data_use_case.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';
import 'package:stoy/presentation/providers/single/body/detail/body_detail_state.dart';

class BodyDetailNotifier extends StateNotifier<BodyDetailState> {
  final AddBodyDataUseCase addBodyDataUseCase;
  final UpdateBodyDataUseCase updateBodyDataUseCase;
  final AuthState authState;

  BodyDetailNotifier(
      {required this.addBodyDataUseCase,
      required this.updateBodyDataUseCase,
      required this.authState,
      Body? bodyData})
      : super(BodyDetailState.initial()) {
    if (bodyData != null) {
      state = state.copyWith(
          bodyData: bodyData.copyWith(userId: authState.user.userId));
    }
  }

  bool get _isNewData {
    return state.bodyData.docId.isEmpty;
  }

  String get monthDayText {
    final ymdSplit = state.bodyData.ymd.split('-');
    return '${ymdSplit[1]}月${ymdSplit[2]}日';
  }

  void onChangeValue({
    double? weight,
    double? fatPercentage,
    double? bodyTemp,
    String? memo,
  }) {
    state = state.copyWith(
        bodyData: state.bodyData.copyWith(
            weight: weight ?? state.bodyData.weight,
            fatPercentage: fatPercentage ?? state.bodyData.fatPercentage,
            bodyTemp: bodyTemp ?? state.bodyData.bodyTemp,
            memo: memo ?? state.bodyData.memo));
  }

  Future<void> addDiet() async {
    return addBodyDataUseCase.call(state.bodyData);
  }

  Future<void> update() async {
    return updateBodyDataUseCase.call(state.bodyData);
  }

  String get executeButtonText {
    if (_isNewData) {
      return '保存する';
    }
    return '更新する';
  }

  void executeSave({required BuildContext context}) {
    state = state.copyWith(isLoading: true);
    if (_isNewData) {
      addDiet().then((value) {
        Navigator.pop(context);
      }).catchError((error) {
        state = state.copyWith(errorMessage: error.toString());
        print(error);
      }).then((value) {
        state = state.copyWith(isLoading: false);
      });
    } else {
      update().then((value) {
        Navigator.pop(context);
      }).catchError((error) {
        state = state.copyWith(errorMessage: error.toString());
        print(error);
      }).then((value) {
        state = state.copyWith(isLoading: false);
      });
    }
  }
}
