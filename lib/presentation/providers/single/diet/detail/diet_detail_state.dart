import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/domain/entities/diet/nutrition.dart';

part 'diet_detail_state.freezed.dart';

@freezed
class DietDetailState with _$DietDetailState {
  const factory DietDetailState({
    @Default('') String title,
    @Default('') String content,
    required DateTime date,
    required Nutrition nutrition,
    required TimeOfDay time,
    @Default('') String photoUrl,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingImage,
    String? errorMessage,
  }) = _DietDetailState;

  factory DietDetailState.initial() => DietDetailState(
        nutrition: Nutrition.empty(),
        date: DateTime.now(),
        time: TimeOfDay.now(),
      );
}
