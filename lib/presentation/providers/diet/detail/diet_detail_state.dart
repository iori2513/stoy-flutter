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
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _DietDetailState;

  factory DietDetailState.initial() => DietDetailState(
        nutrition: Nutrition.empty(),
        date: DateTime.now(),
        time: TimeOfDay.now(),
      );
}

// class DietCreateState extends Equatable {
//   final String title;
//   final String content;
//   final DateTime date;
//   final Nutrition nutrition;
//   final bool isLoading;
//   final String? errorMessage;
//
//   const DietCreateState(
//       {this.title = '',
//       this.content = '',
//       required this.nutrition,
//       required this.date,
//       this.isLoading = false,
//       this.errorMessage});
//
//   static DietCreateState initial() {
//     return DietCreateState(nutrition: Nutrition.empty(), date: DateTime.now());
//   }
//
//   DietCreateState copyWith({
//     String? title,
//     String? content,
//     DateTime? date,
//     Nutrition? nutrition,
//     bool? isLoading,
//     String? errorMessage,
//   }) {
//     return DietCreateState(
//       title: title ?? this.title,
//       content: content ?? this.content,
//       date: date ?? this.date,
//       nutrition: nutrition ?? this.nutrition,
//       isLoading: isLoading ?? this.isLoading,
//       errorMessage: errorMessage ?? this.errorMessage,
//     );
//   }
//
//   @override
//   List<Object?> get props => [
//         title,
//         content,
//         date,
//         nutrition,
//         errorMessage,
//       ];
// }
