import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_provider.dart';
import 'package:stoy/presentation/providers/single/diet/detail/diet_detail_notifier.dart';
import 'package:stoy/presentation/providers/single/diet/detail/diet_detail_state.dart';

final dietDetailProvider = StateNotifierProvider.autoDispose
    .family<DietDetailNotifier, DietDetailState, Diet>((ref, diet) {
  final addDietUseCase = ref.watch(addDietUseCaseProvider);
  final state = DietDetailState(
      nutrition: diet.nutrition,
      date: diet.date,
      time: TimeOfDay.fromDateTime(diet.date));
  return DietDetailNotifier(state, addDietUseCase: addDietUseCase);
});
