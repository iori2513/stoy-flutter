import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/use_cases/diet/diet_list_use_case.dart';
import 'package:stoy/presentation/providers/record/record_state.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';

class RecordNotifier extends StateNotifier<RecordState> {
  final DietListUseCase dietListUseCase;
  final AuthState authState;

  RecordNotifier(this.dietListUseCase, this.authState)
      : super(RecordState.initial());

  Stream<List<Diet>> dietList(String userId) {
    return dietListUseCase.call(userId);
  }

  void onChangeDate(DateTime date) {
    state = state.copyWith(date: date);
  }
}
