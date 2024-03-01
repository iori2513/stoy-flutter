import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/domain/entities/diet/diet.dart';

part 'diet_detail_state.freezed.dart';

@freezed
class DietDetailState with _$DietDetailState {
  const factory DietDetailState({
    required Diet diet,
    required TimeOfDay time,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingImage,
    String? errorMessage,
  }) = _DietDetailState;

  factory DietDetailState.initial() =>
      DietDetailState(diet: Diet.empty(userId: ''), time: TimeOfDay.now());
}
