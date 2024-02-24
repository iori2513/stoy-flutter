import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/use_cases/diet/add_diet_use_case.dart';
import 'package:stoy/presentation/providers/diet/detail/diet_detail_state.dart';

class DietCreateNotifier extends StateNotifier<DietCreateState> {
  final AddDietUseCase addDietUseCase;

  DietCreateNotifier(super._state, {required this.addDietUseCase, Diet? diet}) {
    if (diet != null) {
      state = DietCreateState(nutrition: diet.nutrition, date: diet.date);
    }
  }

  Future addDiet() async {
    final diet = Diet(
        docId: '',
        userId: '',
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
}
