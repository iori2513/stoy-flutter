import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_state.dart';
import 'package:stoy/presentation/providers/single/record/record_state.dart';

class RecordNotifier extends StateNotifier<RecordState> {
  final AuthState authState;
  final DietListState dietListState;

  RecordNotifier({required this.authState, required this.dietListState})
      : super(RecordState.initial());

  void onChangeDate(DateTime date) {
    state = state.copyWith(date: date);
  }
}
